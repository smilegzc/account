package mypackage;

import java.sql.*;
import java.util.ArrayList;

public class ckxxop {
	
	public void add(String salerName, String gukeName, String gukeCall, String goodsName, String goodsNum, String sale, String yMoney, String sMoney) {
		String sql = "";
		try {
			DB db = new DB();
			String saleTableSql = "insert into ckxx values (now(), ?, ?, ?, ?, ?, ? ,?, ?)";
			String goodsSql = "insert into goods values (now(), ?, ?)";
			PreparedStatement pstmt = db.prepare(saleTableSql);
			pstmt.setString(1, salerName);
			pstmt.setString(2, gukeName);
			pstmt.setString(3, gukeCall);
			pstmt.setString(4, goodsName);
			pstmt.setString(5, goodsNum);
			pstmt.setString(6, sale);
			pstmt.setDouble(7, Double.valueOf(yMoney));
			pstmt.setDouble(8, Double.valueOf(sMoney));
			pstmt.executeUpdate();
			db.close(pstmt);
			
			String[] goodsNames = goodsName.split(",");
			String[] goodsNums = goodsNum.split(",");
			pstmt = db.prepare(goodsSql);
			for (int i = 0; i < goodsNames.length; i++) {
				pstmt.setString(1, goodsNames[i]);
				pstmt.setString(2, goodsNums[i]);
				pstmt.executeUpdate();
			}
			db.close(pstmt);
			db.close();
			
			ypxxop ypop = new ypxxop();
			for(int i = 0; i < goodsNames.length; i++) {
				String num = ypop.getNum(goodsNames[i]);
				int temp = Integer.valueOf(num) - Integer.valueOf(goodsNums[i]);
				ypop.setNum(goodsNames[i], String.valueOf(temp));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println("增加错误，错误信息：" + e.getMessage());
		}
	}
	
	public ArrayList<ckxx> getByData(String start, String end, String gukeName, String gukeCall, String name, String type) {
		ArrayList<ckxx> al = new ArrayList<>();
		String sql = "";
		try {
			DB db = new DB();
			if(gukeName != null && !gukeName.equals("")) {
				if (type.equals("1")) {
					sql = "SELECT * FROM ckxx where gukeName='" + gukeName + "' and " +
							"DATE_FORMAT(sdate,'%Y%m%d') BETWEEN '" + start + "' and '" + end + "'";
				} else if (type.equals("2")) {
					sql = "SELECT * FROM ckxx where gukeName='" + gukeName + "' and " +
							"salerName='" + name + "' and DATE_FORMAT(sdate,'%Y%m%d') BETWEEN '" + start + "' and '" + end + "'";
				}
			} else if(gukeCall != null && !gukeCall.equals("")) {
				if (type.equals("1")) {
					sql = "SELECT * FROM ckxx where gukeCall='" + gukeCall + "' and " +
							"DATE_FORMAT(sdate,'%Y%m%d') BETWEEN '" + start + "' and '" + end + "'";
				} else if (type.equals("2")) {
					sql = "SELECT * FROM ckxx where gukeCall='" + gukeCall + "' and " +
							"salerName='" + name + "' and DATE_FORMAT(sdate,'%Y%m%d') BETWEEN '" + start + "' and '" + end + "'";
				}
			} else {
				if (type.equals("1")) {
					sql = "SELECT * FROM ckxx where " +
							"DATE_FORMAT(sdate,'%Y%m%d') BETWEEN '" + start + "' and '" + end + "'";
				} else if (type.equals("2")) {
					sql = "SELECT * FROM ckxx where " +
							"salerName='" + name + "' and DATE_FORMAT(sdate,'%Y%m%d') BETWEEN '" + start + "' and '" + end + "'";
				}
			}
			ResultSet rs = db.executeQuery(sql);
			while (rs.next()) {
				ckxx ck = new ckxx();
				ck.setSdate(rs.getDate("sdate").toString());
				ck.setSalerName(rs.getString("salerName"));
				ck.setGukeName(rs.getString("gukeName"));
				ck.setGukeCall(rs.getString("gukeCall"));
				ck.setGoodsName(rs.getString("goodsName"));
				ck.setGoodsNum(rs.getString("goodsNum"));
				ck.setyMoney(String.valueOf(rs.getDouble("yMoney")));
				ck.setsMoney(String.valueOf(rs.getDouble("sMoney")));
				
				al.add(ck);
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
	
	
}