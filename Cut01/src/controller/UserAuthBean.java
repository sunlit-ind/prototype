package controller;

import model.UserBean;

public class UserAuthBean {

	/**
	 * Creates a new instance of UserAuthBean
	 */
	public UserAuthBean(){

	}

	public boolean execute(UserBean ub) {
		if (ub.getName().equals("999") == true && ub.getPassword().equals("999") == true) {
			return true;
		}else{
			return false;
		}
	}
}
