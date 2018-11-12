package mypackage;

import java.sql.ResultSet;
import java.util.ArrayList;

public class rkxxop {
	
	public void add(String name, String num) {
		String sql = "";
		try {
			DB db = new DB();
			
			sql = "insert into kc(rdate,goodsName,goodsNum)";
			sql = sql + " values(" + "now(),'" + name + "','" + num + "')";
			db.executeUpdate(sql);
			db.close();
			
			String[] goodsNames = name.split(",");
			String[] goodsNums = num.split(",");
			ypxxop ypop = new ypxxop();
			for (int i = 0; i < goodsNames.length; i++) {
				String kNum = ypop.getNum(goodsNames[i]);
				int temp = Integer.valueOf(kNum) + Integer.valueOf(goodsNums[i]);
				ypop.setNum(goodsNames[i], String.valueOf(temp));
			}
		} catch (Exception e) {
			System.err.println("增加错误，错误信息：" + e.getMessage());
		}
	}
	
	public ArrayList<rkxx> getByDate(String start, String end) {
		ArrayList<rkxx> al = new ArrayList<rkxx>();
		String sql = "";
		try {
			DB db = new DB();
			sql = "SELECT * FROM kc where " +
					"DATE_FORMAT(rdate,'%Y%m%d') BETWEEN '" + start + "' and '" + end + "'";
			ResultSet rs = db.executeQuery(sql);
			while (rs.next()) {
				rkxx rk = new rkxx();
				rk.setDate(rs.getDate("rdate").toString());
				rk.setGoodsName(rs.getString("goodsName"));
				rk.setGoodsNum(rs.getString("goodsNum"));
				
				al.add(rk);
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
	
	
}