package mypackage;

import java.sql.ResultSet;
import java.util.ArrayList;

/**
 * 商品信息操作
 */

public class ypxxop {
	
	//增加商品信息
	public void add(String shotName, String goodsName, String factory, String sale, String num) {
		String sql = "";
		try {
			DB db = new DB();
			
			sql = "insert into ypxx(shotName, goodsName, factory, sale)";
			sql = sql + " values('" + shotName + "','" + goodsName + "','" + factory + "','" + sale + "','" + num + "')";
			db.executeUpdate(sql);
			db.close();
		} catch (Exception e) {
			System.err.println("增加错误，错误信息：" + e.getMessage());
		}
	}
	
	public void update(String shotName, String goodsName, String factory, String sale, String num) {
		DB db = new DB();
		try {
			String sql = "update ypxx set goodsName='" + goodsName + "',factory='" + factory
					+ "',sale='" + sale + "',num='" + num + "' where shotName='" + shotName + "'";
			db.executeUpdate(sql);
			db.close();
		} catch (Exception e) {
			System.err.println("更新信息错误，错误信息：" + e.getMessage());
		}
	}
	
	public void delete(String shotName) {
		DB db = new DB();
		try {
			String sql = "delete from ypxx where shotName='" + shotName + "'";
			db.executeUpdate(sql);
			db.close();
		} catch (Exception e) {
			System.err.println("删除信息失败，错误信息：" + e.getMessage());
		}
	}
	
	
	public ArrayList<ypxx> getypxxbyall() {
		ArrayList<ypxx> al = new ArrayList<ypxx>();
		String sql = "";
		try {
			DB db = new DB();
			sql = "select * from ypxx";
			ResultSet rs = db.executeQuery(sql);
			while (rs.next()) {
				ypxx yp = new ypxx();
				yp.setShotName(rs.getString("shotName"));
				yp.setGoodsName(rs.getString("goodsName"));
				yp.setFactory(rs.getString("factory"));
				yp.setSale(rs.getString("sale"));
				yp.setNum(rs.getString("num"));
				al.add(yp);
			}
			if (rs != null) {
				rs.close();
			}
			db.close();
		} catch (Exception e) {
			System.err.println("信息失败，错误信息：" + e.getMessage());
		}
		return al;
	}
	
	public ArrayList<ypxx> getByShotName(String shotName) {
		ArrayList<ypxx> al=new ArrayList<>();
		ypxx yp = new ypxx();
		String sql = "";
		try {
			DB db = new DB();
			sql = "select * from ypxx where shotName='" + shotName + "'";
			ResultSet rs = db.executeQuery(sql);
			if (rs.next()) {
				yp.setShotName(rs.getString("shotName"));
				yp.setGoodsName(rs.getString("goodsName"));
				yp.setFactory(rs.getString("factory"));
				yp.setSale(rs.getString("sale"));
				yp.setNum(rs.getString("num"));
				al.add(yp);
			}
			if (rs != null) {
				rs.close();
				rs = null;
			}
			db.close();
		} catch (Exception e) {
			System.err.println("信息失败，错误信息：" + e.getMessage());
		}
		return al;
	}
	
	public ypxx getByShotName2(String shotName) {
		ypxx yp = null;
		String sql;
		try {
			DB db = new DB();
			sql = "select * from ypxx where shotName='" + shotName + "'";
			ResultSet rs = db.executeQuery(sql);
			if (rs.next()) {
				yp = new ypxx();
				yp.setShotName(rs.getString("shotName"));
				yp.setGoodsName(rs.getString("goodsName"));
				yp.setFactory(rs.getString("factory"));
				yp.setSale(rs.getString("sale"));
				yp.setNum(rs.getString("num"));
			}
			if (rs != null) {
				rs.close();
			}
			db.close();
		} catch (Exception e) {
			System.err.println("信息失败，错误信息：" + e.getMessage());
		}
		return yp;
	}
	
	
	public String getNum(String goodsName) {
		String goodsNum = "";
		String sql = "";
		try {
			DB db = new DB();
			sql = "select num from ypxx where goodsName='" + goodsName + "'";
			ResultSet rs = db.executeQuery(sql);
			if (rs.next()) {
				goodsNum = rs.getString("num");
			} else {
				goodsNum = "";
			}
			db.close();
		} catch (Exception e) {
			
		}
		return goodsNum;
	}
	
	public void setNum(String goodsName, String num) {
		String sql = "";
		try {
			DB db = new DB();
			sql = "update ypxx set num='" + num + "' where goodsName='" + goodsName + "'";
			db.executeUpdate(sql);
			db.close();
		} catch (Exception e) {
			System.err.println("更新信息错误，错误信息：" + e.getMessage());
		}
	}
	
}