package model.dto;

import java.sql.Date;

public class CustomerDTO {
	private String mId;
	private String password;
	private String name;
	private String phone;
	private String birth;
	private String email;
	private String gender;

	public CustomerDTO() {
		super();
	}

	public CustomerDTO(String mId, String password, String name, String phone, String birth, String email,
			String gender) {
		super();
		this.mId = mId;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.birth = birth;
		this.email = email;
		this.gender = gender;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

}
