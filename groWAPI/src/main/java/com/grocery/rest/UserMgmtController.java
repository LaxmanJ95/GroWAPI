package com.grocery.rest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.slf4j.*;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.grocery.clib.model.SuccessIDResponse;
import com.grocery.clib.service.email.EmailService;
import com.grocery.clib.service.email.EmailTemplateService;
import com.grocery.clib.util.JSONUtil;
import com.grocery.clib.util.SecureData;
import com.grocery.model.dbentity.Address;
import com.grocery.model.dbentity.User;
import com.grocery.model.dbentity.UserExt;
import com.grocery.model.email.EmailMessage;
import com.grocery.model.usermgmt.AddUpdateAddressRequest;
import com.grocery.model.usermgmt.AddressIDResponse;
import com.grocery.model.usermgmt.AddressResponse;
import com.grocery.model.usermgmt.ChangePasswordRequest;
import com.grocery.model.usermgmt.ChangePasswordResponse;
import com.grocery.model.usermgmt.EmailIdExistRequest;
import com.grocery.model.usermgmt.EmailIdExistResponse;
import com.grocery.model.usermgmt.ForgotPasswordRequest;
import com.grocery.model.usermgmt.ForgotPasswordResponse;
import com.grocery.model.usermgmt.ForgotUsernameRequest;
import com.grocery.model.usermgmt.ForgotUsernameResponse;
import com.grocery.model.usermgmt.LoginRequest;
import com.grocery.model.usermgmt.LoginResponse;
import com.grocery.model.usermgmt.ShippingAddressResponse;
import com.grocery.model.usermgmt.UpdateUserProfileRequest;
import com.grocery.model.usermgmt.UpdateUserProfileResponse;
import com.grocery.model.usermgmt.UserNameExistRequest;
import com.grocery.model.usermgmt.UserNameExistResponse;
import com.grocery.model.usermgmt.UserProfile;
import com.grocery.model.usermgmt.UserSignupRequest;
import com.grocery.model.usermgmt.UserSignupResponse;
import com.grocery.service.UserMgmtService;
import com.grocery.service.UserProfileService;

@RestController
@RequestMapping("/usermgmt")
@CrossOrigin( maxAge = 3600)
public class UserMgmtController {
	private static final Logger logger =  LoggerFactory.getLogger(UserMgmtController.class);
	@Autowired
	private UserMgmtService userMgmtService;
	@Autowired
	private UserProfileService userProfileService;
	@Autowired
	private EmailService emailService;
	@Autowired
	private EmailTemplateService emailTemplateService;

	
	@RequestMapping("/")
	public String home() {
		return "User Management";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/registerUser")
	public UserSignupResponse registerUser(@RequestBody UserSignupRequest request) {
		UserSignupResponse response = new UserSignupResponse();

		try {
			User user = new User();
			SecureData sd = new SecureData();
			String encryptedPassword = sd.encrypt(request.getPassword());
			user.setFirstName(request.getFirstName());
			user.setLastName(request.getLastName());
			user.setEmail(request.getEmail());
			user.setPassword(encryptedPassword);
			user.setPhoneNumber(request.getPhoneNumber());
			user.setUserName(request.getUserName());
			user.setSecurityQuestion(request.getSecurityQuestion());
			user.setSecurityQuestionAnswer(request.getSecurityQuestionAnswer());
			User retUser = userMgmtService.saveUser(user);
			logger.info("User Saved");			
			/* sending email */			
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("firstName", retUser.getFirstName());
			map.put("lastName", retUser.getLastName());
			map.put("userName", retUser.getUserName());
			String subject= "We have created new account for Spicy Corner";
			String emailBody = emailTemplateService.getEmailTemplate("registrationConfirm.vm",map);
			EmailMessage emailMessage = new EmailMessage();
			emailMessage.setToEmail(retUser.getEmail());
			emailMessage.setSubject(subject);
			emailMessage.setEmailBody(emailBody);
			emailService.sendEmail(retUser.getEmail(), subject, emailBody);
			//emailService.send2EmailQueue(emailMessage);
			logger.info("User registration email sent");
			
		} catch (Exception e) {
			logger.error("Signup Failed", e);
			response.setSuccess(false);
		}
		return response;
	}

	@RequestMapping(method = RequestMethod.POST, value = "/login")
	public LoginResponse login(@RequestBody LoginRequest request,HttpServletRequest servletRequest) {
		
		
		LoginResponse response = new LoginResponse();
		try {
			SecureData sd = new SecureData();
			String encryptedPassword = sd.encrypt(request.getPassword());
			User retUser = userMgmtService.login(request.getUserName(), encryptedPassword);
			if(retUser!=null){
				UserProfile userProfile = new UserProfile(retUser);
				response.setUserProfile(userProfile);
				Cookie ck=new Cookie("user","sonoo jaiswal");//creating cookie object  
				response.addCookie(ck);	
				
				try{
					UserExt userExt = userProfileService.getUserProfileByUserId(retUser.getId());
				//	if(userExt.getProfileImageUrl()==null){
					//	userExt.setProfileImageUrl("app/img/profile-avatar.png");
				//	}
					Address address = userMgmtService.getAddress(retUser.getId(),0);
					userProfile.setAddress(address);
					userProfile.setUserExt(userExt);
				}catch(Exception e){
					logger.error("Login address not available", e);
				}
				try{
					long roleId = userMgmtService.getUserRoleId(retUser.getId());
					userProfile.setRoleId(roleId);
				}catch(Exception e){
					logger.error("roleId not available", e);
				}
			}
			else{
				response.setSuccess(false);
			}
		//	emailService.sendEmail("rajazekar@yahoo.com", "rajazekar@gmail.com", "Hi", "Hello");
			
		} catch (Exception e) {
			logger.error("login Failed", e);
			response.setSuccess(false);
		}
		return response;
	}
	@RequestMapping(method = RequestMethod.POST, value = "/addUpdateAddress")
	public AddressIDResponse addUpdateAddress(@RequestBody AddUpdateAddressRequest request) {
		AddressIDResponse response = new AddressIDResponse();
		try {
			System.out.println("request :  "+JSONUtil.toJson(request));
			Address address = new Address();
			if(request.getAddress().getId() == null || request.getAddress().getId() == 0 ){
				address.setAddressType(request.getAddress().getAddressType());
				address.setName(request.getAddress().getName());
				address.setStreet(request.getAddress().getStreet());
				address.setStreet2(request.getAddress().getStreet2());
				address.setLocality(request.getAddress().getLocality());
				address.setCity(request.getAddress().getCity());
				address.setState(request.getAddress().getState());
				address.setCountry(request.getAddress().getCountry());
				address.setUserId(request.getAddress().getUserId());
				address.setZipcode(request.getAddress().getZipcode());
				userMgmtService.saveAddress(address);
				response.setAddressId(address.getId());
				response.setAddressType(address.getAddressType());
				response.setCity(address.getCity());
				logger.info("Add address success");
			}
			else{
			address = userMgmtService.getAddressById(request.getAddress().getId());
			
				address.setAddressType(request.getAddress().getAddressType());
				address.setName(request.getAddress().getName());
				address.setStreet(request.getAddress().getStreet());
				address.setStreet2(request.getAddress().getStreet2());
				address.setCity(request.getAddress().getCity());
				address.setCountry(request.getAddress().getCountry());
				address.setUserId(request.getAddress().getUserId());
				address.setZipcode(request.getAddress().getZipcode());
				userMgmtService.saveAddress(address);
				response.setAddressId(address.getId());
				response.setAddressType(address.getAddressType());
				logger.info("update address success");
			}
		} catch (Exception e) {
			logger.error("Add update address failed", e);
			response.setSuccess(false);
		}
		return response;
	}
	@RequestMapping(method = RequestMethod.POST, value = "/usernameExists")
	public UserNameExistResponse userNameExist(@RequestBody UserNameExistRequest request){
		UserNameExistResponse response = new UserNameExistResponse();
		try{
			User user = userMgmtService.userNameExist(request.getUserName());
			if(user!=null)
				response.setUserNameExists(true);
			else
				response.setUserNameExists(false);
		}
		catch(Exception e){
			logger.error("invalid Username", e);
			response.setSuccess(false);
			
		}
		return response;
	}	
	@RequestMapping(method = RequestMethod.POST, value = "/forgotPassword")
	public ForgotPasswordResponse forgotPassword(@RequestBody ForgotPasswordRequest request){
		ForgotPasswordResponse response = new ForgotPasswordResponse();
		try{
			
			User user = userMgmtService.getPasswordByUserName(request.getUserName());
			SecureData sd = new SecureData();
			String clearPassword = sd.decrypt(user.getPassword());
			System.out.println("@@@@@@@@@@2"+clearPassword);
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("firstName", user.getFirstName());
			map.put("lastName", user.getLastName());
			map.put("userName", user.getUserName());
			map.put("password", clearPassword );
			String subject = "Your password for Spice Corner ";
			String emailBody = emailTemplateService.getEmailTemplate("recoveryPassword.vm",map);
			EmailMessage emailMessage = new EmailMessage();
			emailMessage.setToEmail(user.getEmail());
			emailMessage.setSubject(subject);
			emailMessage.setEmailBody(emailBody);
			emailService.sendEmail(user.getEmail(), subject, emailBody);
			//emailService.send2EmailQueue(emailMessage);
			
		}
		catch(Exception e){
			logger.error("no username found" ,e);
			response.setSuccess(false);
		}
	
		return response;
	}
	@RequestMapping(method = RequestMethod.POST, value = "/forgotUsername")
	public ForgotUsernameResponse forgotUsername(@RequestBody ForgotUsernameRequest request){
		System.out.println("Email" +request.getEmail());
		ForgotUsernameResponse response = new ForgotUsernameResponse();
		try{
			System.out.println("request " +request.getEmail());
			User user = userMgmtService.getUserByEmail(request.getEmail());

			response.setUsername(user.getUserName());
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("firstName", user.getFirstName());
			map.put("lastName", user.getLastName());
			map.put("userName", user.getUserName());
			String subject= "Your Username for Spice Corner";
			String emailBody = emailTemplateService.getEmailTemplate("recoveryUsername.vm",map);
			EmailMessage emailMessage = new EmailMessage();
			emailMessage.setToEmail(user.getEmail());
			emailMessage.setSubject(subject);
			emailMessage.setEmailBody(emailBody);
			emailService.sendEmail(user.getEmail(), subject, emailBody);
			//emailService.send2EmailQueue(emailMessage);
			
		}
		catch(Exception e){
			logger.error("invalid email", e);
			response.setSuccess(false);
		}
		return response;
}
	@RequestMapping(method = RequestMethod.POST, value = "/changePassword")
	public ChangePasswordResponse chanagePassword(@RequestBody ChangePasswordRequest request){
		ChangePasswordResponse response = new ChangePasswordResponse();
		try{
			SecureData sd = new SecureData();
			String encryptedPassword = sd.encrypt(request.getOldPassword());
			User user = userMgmtService.changePassword(request.getUserId(), encryptedPassword );
			if(user==null){
				response.setUserErrorMsg("User & Password not matching!");
				response.setSuccess(false);
				return response;
			}
			System.out.println("id: "+request.getUserId()+"password: "+encryptedPassword );
			SecureData sd1 = new SecureData();
			String password = sd1.encrypt(request.getNewPassword());
			user.setPassword(password);
			user = userMgmtService.saveUser(user);
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("firstName", user.getFirstName());
			map.put("lastName", user.getLastName());
			map.put("userName", user.getUserName());
			String subject= "Your Password has been updated Successfully";
			String emailBody = emailTemplateService.getEmailTemplate("changePassword.vm",map);
			EmailMessage emailMessage = new EmailMessage();
			emailMessage.setToEmail(user.getEmail());
			emailMessage.setSubject(subject);
			emailMessage.setEmailBody(emailBody);
			emailService.sendEmail(user.getEmail(), subject, emailBody);
			//emailService.send2EmailQueue(emailMessage);
			logger.info("successfully update");
		}
		catch(Exception e){
			logger.error("invalid password", e);
			response.setSuccess(false);
		}		return response;
	}
	@RequestMapping(method = RequestMethod.POST, value = "/updateUserProfile")
	public UpdateUserProfileResponse updateUserProfile(@RequestBody UpdateUserProfileRequest request){
		UpdateUserProfileResponse response = new UpdateUserProfileResponse();
		try{

			String content = ""; 
			System.out.println("request "+JSONUtil.toJson(request.getUser()));
			User user = userMgmtService.getUserById(request.getUser().getId());
//			System.out.println("before "+JSONUtil.toJson(beforeUpdate));
			if(!request.getUser().getEmail().equals(user.getEmail()))
				 content = "Email : <b>"+request.getUser().getEmail()+"</b>. <br>";
			if(!request.getUser().getFirstName().equals(user.getFirstName()))
				content+= "First Name : <b>"+request.getUser().getFirstName()+"</b>. <br>";
			if(!request.getUser().getLastName().equals(user.getLastName()))
				content+= "Last Name : <b>"+request.getUser().getLastName()+"</b>. <br>";
			if(!request.getUser().getPhoneNumber().equals(user.getPhoneNumber()))
				content+= "PhoneNumber : <b>"+request.getUser().getPhoneNumber()+"</b>. <br>";
			user.setEmail(request.getUser().getEmail());
			user.setFirstName(request.getUser().getFirstName());
			user.setLastName(request.getUser().getLastName());
			user.setPhoneNumber(request.getUser().getPhoneNumber());		
			userMgmtService.saveUser(user);
			
			UserExt userExt = userProfileService.saveUserProfile(request.getUserExt());
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("firstName", user.getFirstName());
			map.put("lastName", user.getLastName());
			map.put("userName", user.getUserName());
			map.put("content", content);
			String subject= "Your Profile has been updated Successfully";
			String emailBody = emailTemplateService.getEmailTemplate("userProfileUpdate.vm",map);
			EmailMessage emailMessage = new EmailMessage();
			emailMessage.setToEmail(user.getEmail());
			emailMessage.setSubject(subject);
			emailMessage.setEmailBody(emailBody);
			emailService.sendEmail(user.getEmail(), subject, emailBody);
			//emailService.send2EmailQueue(emailMessage);
						
			// for address.
		/*	Address address = userMgmtService.updateAddress(request.getUserId());
			address.setUserId(request.getUserId());	
			address.setStreet(request.getAddress().getStreet());
			address.setStreet2(request.getAddress().getStreet2());
			address.setCity(request.getAddress().getCity());
			address.setState(request.getAddress().getState());
			address.setZipcode(request.getAddress().getZipcode());
			address.setCountry(request.getAddress().getCountry());
			logger.info("get Profile ", JSONUtil.toJson(address));
			Address address1 = userMgmtService.saveAddress(address);
		///	response.setUserId(user.getId());
		//	response.setPhoneNumber(user.getPhoneNumber());
		//	response.setEmail(user.getEmail()); */
			logger.info("successfully update");
			user.setPassword("");
			response.setUser(user);
			response.setUserExt(userExt);
		}
		catch(Exception e){
			logger.error("invalid userId",e);
			response.setSuccess(false);
		}
		return response;
}
	
	@RequestMapping(method = RequestMethod.POST, value = "/emailIdExist")
	public EmailIdExistResponse emailIdExist(@RequestBody EmailIdExistRequest request){
		EmailIdExistResponse response = new EmailIdExistResponse();
		try{
			User user = userMgmtService.emailIdExist(request.getEmail());
			if(user != null){
				response.setEmailIdExist(true);
				System.out.println("email : "+user.getEmail());
			}
				
			else
				response.setEmailIdExist(false);
		}
		catch(Exception e){
			logger.error("invalid EmailId", e);
			response.setSuccess(false);
		}
		
		return response;
	}
	/*@RequestMapping(method = RequestMethod.POST, value = "/addProfile")
	public AddProfileResponse addProfile(@RequestBody AddProfileRequest request){
		AddProfileResponse response = new AddProfileResponse();
		try{
			User user = new User();
			SecureData sd = new SecureData();
			String encryptedPassword = sd.encrypt(request.getUser().getPassword());
			System.out.println("encrypt: "+encryptedPassword);
			user.setUserName(request.getUser().getUserName());
			user.setPassword(encryptedPassword);
			user.setPhoneNumber(request.getUser().getPhoneNumber());
			user.setLastName(request.getUser().getLastName());
			user.setFirstName(request.getUser().getFirstName());
			user.setEmail(request.getUser().getEmail());
			user.setSecurityQuestion(request.getUser().getSecurityQuestion());
			user.setSecurityQuestionAnswer(request.getUser().getSecurityQuestionAnswer());
			User retUser = userMgmtService.saveUser(user);
			logger.info("getMyOrder ", JSONUtil.toJson(user));
			logger.info("User Saved", retUser);
			Address address = new Address();
			address.setUserId(user.getId());
			address.setStreet(request.getAddress().getStreet());
			address.setStreet2(request.getAddress().getStreet2());
			address.setCity(request.getAddress().getCity());
			address.setState(request.getAddress().getState());
			address.setCountry(request.getAddress().getCountry());
			address.setZipcode(request.getAddress().getZipcode());
			address.setName(request.getAddress().getName());
			logger.info("getMyOrder ", JSONUtil.toJson(address));
   		    address = userMgmtService.saveAddress(address);  
			logger.info("Add update address success");
		}
		catch(Exception e){
			logger.error("profile",e);
			response.setSuccess(false);
		}
		return response;
}*/
	@RequestMapping(method = RequestMethod.GET, value = "/getShippingAddress/{userId}")
	public ShippingAddressResponse getShippingAddress(@PathVariable int userId){
		ShippingAddressResponse response = new ShippingAddressResponse();
		try{
			List<Address> address = userMgmtService.getshippingAddress(userId);
			System.out.println(JSONUtil.toJson(address));
			if(address == null || address.size() == 0){
			response.setSuccess(false);
			logger.info("addres is not empty");
			}
			else
				response.setAddress(address);
			logger.info("get address list");
		}
		catch(Exception e){
			logger.error("Address failed",e);
			response.setSuccess(false);
		}
		return response;
	}
	
	@RequestMapping(method = RequestMethod.GET , value = "/getShippingAddressById/{userId}")
	public AddressResponse getShippingAddressById(@PathVariable int userId){
		AddressResponse response = new AddressResponse();
		try{
			Address address = userMgmtService.getAddress(userId, 1);
			if(address != null)
				response.setAddress(address);
			else
				response.setSuccess(false);
			logger.info("adddres get");
		}
		catch(Exception e){
			logger.error("address failed",e);
			response.setSuccess(false);
		}
		return response;
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/addShippingAddress")
	public SuccessIDResponse addShippingAddress(@RequestBody AddUpdateAddressRequest request){
		SuccessIDResponse response = new SuccessIDResponse();
		try{
			Address address = new Address();
			if(address.getId() == 0 || address.getId() == null){
				address.setAddressType(request.getAddress().getAddressType());
				address.setName(request.getAddress().getName());
				address.setStreet(request.getAddress().getStreet());
				address.setLocality(request.getAddress().getLocality());
				address.setStreet2(request.getAddress().getStreet2());
				address.setCity(request.getAddress().getCity());
				address.setState(request.getAddress().getState());
				address.setCountry(request.getAddress().getCountry());
				address.setUserId(request.getAddress().getUserId());
				address.setZipcode(request.getAddress().getZipcode());
				userMgmtService.saveAddress(address);
			}
			else{
				address = userMgmtService.getAddress(request.getAddress().getUserId(), request.getAddress().getAddressType());
				address.setAddressType(request.getAddress().getAddressType());
				address.setName(request.getAddress().getName());
				address.setStreet(request.getAddress().getStreet());
				address.setStreet2(request.getAddress().getStreet2());
				address.setLocality(request.getAddress().getLocality());
				address.setCity(request.getAddress().getCity());
				address.setState(request.getAddress().getState());
				address.setCountry(request.getAddress().getCountry());
				address.setUserId(request.getAddress().getUserId());
				address.setZipcode(request.getAddress().getZipcode());
				userMgmtService.saveAddress(address);
			}
		}
		catch(Exception e){
			logger.error("address failed",e);
			response.setSuccess(false);
		}
		return response;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/deleteAddress/{id}")
	public SuccessIDResponse deleteAddress(@PathVariable long id){
		SuccessIDResponse response = new SuccessIDResponse();
		try{
			userMgmtService.deleteById(id);
			response.setSuccess(true);
		}
		catch(Exception e){
			logger.error("address failed",e);
			response.setSuccess(false);
		}
		return response;
	}
}