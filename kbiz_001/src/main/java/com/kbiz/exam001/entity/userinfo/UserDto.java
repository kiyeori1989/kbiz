package com.kbiz.exam001.entity.userinfo;


public class UserDto {
	
	public String id;
	public String pass;
	public String name;
	public String insdate;
	public String useyn;
	
	
	
	
	public UserDto() {
		super();
	}
	public UserDto(String id, String pass, String name, String insdate, String useyn) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.insdate = insdate;
		this.useyn = useyn;
	}
	@Override
	public String toString() {
		return "UserDto []";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getInsdate() {
		return insdate;
	}
	public void setInsdate(String insdate) {
		this.insdate = insdate;
	}
	public String getUseyn() {
		return useyn;
	}
	public void setUseyn(String useyn) {
		this.useyn = useyn;
	}

}
