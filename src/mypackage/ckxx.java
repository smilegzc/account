package mypackage;

import java.io.Serializable;

public class ckxx implements Serializable {
	
	private static final long serialVersionUID = -2547245654057778522L;
	
	private String sdate;
	private String salerName;
	private String gukeName;
	private String gukeCall;
	private String goodsName;
	private String goodsNum;
	private String sale;
	private String yMoney;
	private String sMoney;
	
	public String getSdate() {
		return sdate;
	}
	
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	
	public String getSalerName() {
		return salerName;
	}
	
	public void setSalerName(String salerName) {
		this.salerName = salerName;
	}
	
	public String getGukeName() {
		return gukeName;
	}
	
	public void setGukeName(String gukeName) {
		this.gukeName = gukeName;
	}
	
	public String getGukeCall() {
		return gukeCall;
	}
	
	public void setGukeCall(String gukeCall) {
		this.gukeCall = gukeCall;
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
	
	public String getSale() {
		return sale;
	}
	
	public void setSale(String sale) {
		this.sale = sale;
	}
	
	public String getyMoney() {
		return yMoney;
	}
	
	public void setyMoney(String yMoney) {
		this.yMoney = yMoney;
	}
	
	public String getsMoney() {
		return sMoney;
	}
	
	public void setsMoney(String sMoney) {
		this.sMoney = sMoney;
	}
}