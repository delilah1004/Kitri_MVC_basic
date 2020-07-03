package com.java.el;

/**
 * @이다은 2020. 6. 10.
 *
 * 
 */

public class MemberInfo {
	private String name;
	private String id;
	private String pass;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	@Override
	public String toString() {
		return "MemberInfo [name=" + name + ", id=" + id + ", pass=" + pass + "]";
	}
	
}
