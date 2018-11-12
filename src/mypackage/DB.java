package mypackage;

import java.sql.*;

public class DB {
	// JDBC方式连接数据库

String sDBDriver = "com.mysql.cj.jdbc.Driver";

String DBUrl = "jdbc:mysql://localhost:3306/account?useSSL=false&serverTimezone=GMT";

String pass = "141211";

	Connection conn = null;

	Statement stmt = null;

	ResultSet rs = null;

	public DB() {
		try {
			Class.forName(sDBDriver);
		} catch (ClassNotFoundException e) {
			System.err.println("数据库驱动注册错误信息： " + e.getMessage());
		}
	}
	
	public boolean repassword(String oldPass) {
		
		return true;
	}
	
	//获取预编译的SQL语句的对象。
	//SQL语句已预编译并存储在PreparedStatement对象中。 然后可以使用该对象多次有效地执行此语句。
	public PreparedStatement prepare(String sql) {
		PreparedStatement pstmt = null;
		try {
			conn = DriverManager.getConnection(DBUrl,"root", pass);
			
			if(conn != null) {
				pstmt = conn.prepareStatement(sql);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pstmt;
	}

	// 执行SQL查询语句
	public ResultSet executeQuery(String sql) {
		rs = null;
		try {
			conn = DriverManager.getConnection(DBUrl,"root", pass);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
		} catch (SQLException ex) {
			System.err.println("执行SQL查询语句错误，错误信息: " + ex.getMessage());
		}
		return rs;
	}

	// 执行SQL更新语句
	public void executeUpdate(String sql) {
		rs = null;
		try {
			conn = DriverManager.getConnection(DBUrl,"root", pass);
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (SQLException ex) {
			System.err.println("执行SQL更新语句错误，错误信息: " + ex.getMessage());
		}
	}

	// 关闭数据库连接
	public void close() {
		try {
			if (stmt != null) {
				stmt.close();
				stmt = null;
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			System.err.println("执行关闭数据库对象失败，错误信息: " + e.getMessage());
		}
	}
	
	public void close(PreparedStatement pstmt) {
		try{
			if(pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
