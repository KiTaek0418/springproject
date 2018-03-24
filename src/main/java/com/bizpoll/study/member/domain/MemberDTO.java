package com.bizpoll.study.member.domain;

public class MemberDTO {

	private String id;
	private String pw;
	private String name;
	private String phone;
	private String nick;
	private String email;
	
	public MemberDTO() {
		
	}
	
	public MemberDTO(String id, String pw, String name, String phone, String nick, String email) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.phone = phone;
		this.nick = nick;
		this.email = email;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
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

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override 
	public String toString() {
		return "MemberDTO(id = " + id + 
				", pw = " + pw +
				", phone = " + phone +
				", name = " + name +
				", nick = " + nick +
				", email = " + email + ")";
	}
}
