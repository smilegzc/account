 package mypackage;

import java.io.Serializable;

 /**
  * 员工信息
  */

public class pxx implements Serializable {

   	private static final long serialVersionUID = -2547245654057778522L;
   	
   	private String name = null;
   	private String phone = null;
   	private String username = null;
   	private String password = null;
	
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
	
	 public String getUsername() {
		 return username;
	 }
	
	 public void setUsername(String username) {
		 this.username = username;
	 }
	
	 public String getPassword() {
		 return password;
	 }
	
	 public void setPassword(String password) {
		 this.password = password;
	 }
 }