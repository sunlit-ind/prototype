package model;

import java.io.Serializable;

/**
 * ユーザー認証のインターフェースを実装する
 * (getter,setter)
 * @author sunlit
 */
public class UserBean implements Serializable{
	private String name;
	private String password;

	/**
	 * UserBeanインスタンスの生成
	 */
	public UserBean() {
		name = "No Name";

	}

	public String getName() {
		return name;

	}

	public void setName(String na) {
		name = na;
	}

	public String getPassword() {
		return password;

	}

	public void setPassword(String ps) {
		password = ps;

	}

	public String[] getProduct() {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}

	public void setProduct(String[] strings) {
		// TODO 自動生成されたメソッド・スタブ

	}

}
