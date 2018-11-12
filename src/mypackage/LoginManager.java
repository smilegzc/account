package mypackage;

import java.sql.ResultSet;


public class LoginManager {
	public String testUser(String username, String password, String type) {
		String result = null;
		String sql = "";
		DB db = new DB();
		if ("1".equals(type)) {
			sql = "select * from guanli where username='" + username + "' and password='" + password + "'";
		} else if ("2".equals(type)) {
			sql = "select * from pxx where username='" + username + "' and password='" + password + "'";
		}
		
		try {
			ResultSet rs = db.executeQuery(sql);
			if (rs.next()) {
				result = rs.getString("name");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
