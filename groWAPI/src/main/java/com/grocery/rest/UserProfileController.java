package com.grocery.rest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.grocery.clib.model.SuccessIDResponse;
import com.grocery.model.dbentity.UserExt;
import com.grocery.model.userprofile.UserProfileRequest;
import com.grocery.model.userprofile.UserProfileResponse;
import com.grocery.service.UserProfileService;

@RestController
@RequestMapping("/userProfile")
@CrossOrigin( maxAge = 3600)
public class UserProfileController {

	private static final Logger logger = LoggerFactory.getLogger(UserProfileController.class);
	
	@Autowired
	private UserProfileService userProfileService;
	
	@RequestMapping(method = RequestMethod.POST, value = "/updateUserProfile")
	public SuccessIDResponse updateUserProfie(@RequestBody UserProfileRequest request){
		SuccessIDResponse response = new SuccessIDResponse();
		try{
			UserExt userProfile = userProfileService.getUserProfileByUserId(request.getUserId());
			userProfile.setDoctorName(request.getDoctor());
			userProfile.setDoctorPhone(request.getDoctorPhone());
			userProfile.setProfileImageUrl(request.getProfileImageUrl());
			userProfileService.saveUserProfile(userProfile);
			response.setSuccess(true);		
		}
		catch(Exception e){
			logger.error("updateUserProfile Failed",e);
			response.setSuccess(false);
		}
		return response;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/getUserProfile/{userId}")
	public UserProfileResponse getUserProfile(@PathVariable int userId){
		UserProfileResponse response = new UserProfileResponse();
		try{
			UserExt userProfile = userProfileService.getUserProfileByUserId(userId);
			response.setUserProfile(userProfile);
		}
		catch(Exception e){
			logger.error("UserProfile Failed",e);
			response.setSuccess(false);
		}
		return response;
	}
}

