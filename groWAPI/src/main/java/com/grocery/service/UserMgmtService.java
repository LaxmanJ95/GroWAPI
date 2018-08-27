package com.grocery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.grocery.clib.util.JSONUtil;
import com.grocery.dao.AddressRepository;
import com.grocery.dao.UserQuery;
import com.grocery.dao.UserRepository;
import com.grocery.model.dbentity.Address;
import com.grocery.model.dbentity.User;
import com.grocery.model.usermgmt.AddProfileRequest;
import com.grocery.model.usermgmt.AddUpdateAddressRequest;
import com.grocery.model.usermgmt.UpdateUserProfileRequest;

@Service
@Transactional
public class UserMgmtService {
	@Autowired
	private  UserRepository userRepository;
	
	@Autowired
	private  AddressRepository addressRepository;
	@Autowired
	private  UserQuery userQuery;	
	
	public UserMgmtService( ) {
			//this.userRepository = userRepository;
	}
	public User saveUser(User user){
		User user2 = this.userRepository.save(user);
		return user2;
	}
	public User login(String userName, String password){
		return this.userRepository.findByUserNameAndPassword(userName, password);
	}
	public Address getAddress(int userId,int addressType){
		return userQuery.getAddressByUserId(userId, addressType);
	}	
	public Address getAddressById(long id){
		return addressRepository.findById(id);
	}
	public Address addUpdateAddress(AddUpdateAddressRequest request){
		return addressRepository.save(request.getAddress());
	}
	public User userNameExist(String userName){
		return this.userRepository.findByUserName(userName);
	}	
	public long getUserRoleId(long userId){
		return userQuery.getUserRoleId(userId);
	}
	public User getPasswordByUserName(String userName){
		return this.userRepository.findByUserName(userName);
	}

	public User getUserByEmail(String email){

		return this.userRepository.findByEmail(email);
	}
	public User changePassword(int id,String password){
		return this.userRepository.findByIdAndPassword(id,password);
	}
	public Address updateAddress(int userId){
		return this.addressRepository.findByUserId(userId);
	}
	public Address saveAddress(Address address){
		addressRepository.save(address);
		System.out.println(JSONUtil.toJson(address));
		return address;
	}
	public User getUserById(int id){
	  return this.userRepository.findById(id);
	}
	public User emailIdExist(String email){
		return this.userRepository.findByEmail(email);
	}
	public List<Address> getshippingAddress(int userId){
		return this.addressRepository.findByUserIdAndAddressType(userId, 1);
	}
	public void deleteById(long id){
		 this.addressRepository.deleteById(id);
	}
}



