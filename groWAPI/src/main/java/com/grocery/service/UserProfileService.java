package com.grocery.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.grocery.dao.UserProfileRepository;
import com.grocery.model.dbentity.UserExt;
import com.grocery.model.userprofile.UserProfileRequest;

@Service
@Transactional
public class UserProfileService {
	
	@Autowired
	private UserProfileRepository userProfileRepository;
	
	public UserExt getUserProfileByUserId(int userId){
		UserExt updateUserProfile = this.userProfileRepository.findByUserId(userId);
		return updateUserProfile;
	}
	
	public UserExt saveUserProfile(UserExt userProfile){
		UserExt userProfile1 = this.userProfileRepository.save(userProfile);
		return userProfile1;
	}

}
