package com.fallenblackbird.modelo;

public class Usuario {

	private String user;
	private String password;
	
	public String getUser() {
		return user;
	}
	
	public void setUser(String user) {
		this.user = user;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "Usuario [user=" + user + ", password=" + password + "]";
	}
	
}
