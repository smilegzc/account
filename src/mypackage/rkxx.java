package mypackage;

import java.io.PrintStream;
import java.io.Serializable;

public class rkxx implements Serializable {

   	private static final long serialVersionUID = -2547245654057778522L;
   	private String date;
   	private String goodsName;
   	private String goodsNum;
	
	public String getDate() {
		return date;
	}
	
	public void setDate(String date) {
		this.date = date;
	}
	
	public String getGoodsName() {
		return goodsName;
	}
	
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	
	public String getGoodsNum() {
		return goodsNum;
	}
	
	public void setGoodsNum(String goodsNum) {
		this.goodsNum = goodsNum;
	}
}