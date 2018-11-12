package mypackage;

import java.sql.ResultSet;
import java.util.ArrayList;
 

public class ZgManager {
 

	public void setPassword(String name, String username,String usertype,String newpass){
		String sql="";
		DB db=new DB();
		if("1".equals(usertype)){
			if(username == null || username.equals("")) {
				sql = "update guanli set password='" + newpass + "' where name='" + name + "'";
			} else {
				sql = "update guanli set username='" + username + "',password='" + newpass + "' where name='" + name + "'";
			}
		}else if("2".equals(usertype)){
			sql="update pxx set password='"+newpass+"' where name='"+name+"'";
		 
		}
		try{
			db.executeUpdate(sql);
		}catch(Exception e){
			System.err.println("修改密码错误，错误信息："+e.getMessage());
		}
	}
}
