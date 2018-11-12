package mypackage;

import java.sql.ResultSet;
import java.util.ArrayList;

/**
 * 员工信息操作
 */

public class pxxop {
	
	
	public void add(String name, String phone, String username, String password) {
		String sql = "";
		try {
			DB db = new DB();
			
			sql = "insert into pxx(name,phone,username,password)";
			sql = sql + " values('" + name + "','" + phone + "','" + username + "','" + password + "')";
			db.executeUpdate(sql);
			db.close();
		} catch (Exception e) {
			System.err.println("增加用户错误，错误信息：" + e.getMessage());
		}
	}
	
	public void update(String name, String phone, String username, String password) {
		DB db = new DB();
		try {
			String sql = "update pxx set phone='" + phone + "',username='" + username + "',password='" + password + "'" + "where name = '" + name + "'";;
			db.executeUpdate(sql);
			db.close();
		} catch (Exception e) {
			System.err.println("更新信息错误，错误信息：" + e.getMessage());
		}
	}
	
	
	public void delete(String name) {
		DB db = new DB();
		try {
			String sql = "delete from pxx where name='" + name + "'";
			db.executeUpdate(sql);
			db.close();
		} catch (Exception e) {
			System.err.println("删除用户信息失败，错误信息：" + e.getMessage());
		}
	}
	
	public void update(String name, String phone) {
		DB db = new DB();
		try {
			String sql = "update pxx set phone='" + phone + "'" + "where name = '" + name + "'";
			db.executeUpdate(sql);
			db.close();
		} catch (Exception e) {
			System.err.println("更新用户信息错误，错误信息：" + e.getMessage());
		}
	}
	
	
	public ArrayList<pxx> getPxx() {
		ArrayList<pxx> al = new ArrayList<pxx>();
		String sql = "";
		try {
			DB db = new DB();
			sql = "select * from pxx";
			ResultSet rs = db.executeQuery(sql);
			while (rs.next()) {
				
				pxx yx = new pxx();
				yx.setName(rs.getString("name"));
				yx.setPhone(rs.getString("phone"));
				yx.setUsername(rs.getString("username"));
				yx.setPassword(rs.getString("password"));
				
				al.add(yx);
				
			}
			if (rs != null) {
				rs.close();
			}
			db.close();
		} catch (Exception e) {
			System.err.println("用户信息失败，错误信息：" + e.getMessage());
		}
		return al;
	}
	
	public ArrayList<pxx> getPxx2(String name) {
		ArrayList<pxx> al = new ArrayList<>();
		String sql = "";
		try {
			DB db = new DB();
			sql = "select * from pxx where name='" + name + "'";
			ResultSet rs = db.executeQuery(sql);
			while (rs.next()) {
				
				pxx yx = new pxx();
				yx.setName(name);
				yx.setPhone(rs.getString("phone"));
				yx.setUsername(rs.getString("username"));
				yx.setPassword(rs.getString("password"));
				al.add(yx);
			}
			if (rs != null) {
				rs.close();
				rs = null;
			}
			db.close();
		} catch (Exception e) {
			System.err.println("用户信息失败，错误信息：" + e.getMessage());
		}
		return al;
	}
	
	
	public pxx getPxxBid(String name) {
		pxx yx = new pxx();
		String sql = "";
		try {
			DB db = new DB();
			sql = "select * from pxx where name='" + name + "'";
			ResultSet rs = db.executeQuery(sql);
			if (rs.next()) {
				
				yx.setName(name);
				yx.setPhone(rs.getString("phone"));
				yx.setUsername(rs.getString("username"));
				yx.setPassword(rs.getString("password"));
			}
			if (rs != null) {
				rs.close();
			}
			db.close();
		} catch (Exception e) {
			System.err.println("用户信息失败，错误信息：" + e.getMessage());
		}
		return yx;
	}
	
	public float getje() {
		float result = 0;
		String sql = "";
		DB db = new DB();
		
		sql = "select sum(sj) from dxx";
		
		try {
			
			ResultSet rs = db.executeQuery(sql);
			if (rs.next()) {
				result = rs.getFloat(1);
			} else {
				result = 0;
			}
		} catch (Exception e) {
			
		}
		
		
		return result;
	}
	
	
}