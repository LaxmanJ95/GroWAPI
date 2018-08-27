package com.grocery.model.usermgmt;

import com.grocery.clib.model.BaseRequest;
import com.grocery.model.dbentity.User;
import com.grocery.model.dbentity.UserExt;
public class UpdateUserProfileRequest extends BaseRequest {
	
	User user;
	UserExt userExt;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UserExt getUserExt() {
		return userExt;
	}

	public void setUserExt(UserExt userExt) {
		this.userExt = userExt;
	}


	
	/*int userId;
	String firstName;
	String lastName;
	
	String securityQuestion;
	String securityQuestionAnswer;
	String phoneNumber;
	String email;
	*/
	
	
}
