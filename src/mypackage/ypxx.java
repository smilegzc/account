 package mypackage;

import java.io.Serializable;

 /**
  * 商品信息
  */
 public class ypxx implements Serializable {

   	private static final long serialVersionUID = -2547245654057778522L;
   	
   	private String shotName = null;
   	private String goodsName = null;
   	private String factory = null;
   	private String sale = null;
   	private String num = null;
	
	 public String getNum() {
		 return num;
	 }
	
	 public void setNum(String num) {
		 this.num = num;
	 }
	
	 public String getShotName() {
		 return shotName;
	 }
	
	 public void setShotName(String shotName) {
		 this.shotName = shotName;
	 }
	
	 public String getGoodsName() {
		 return goodsName;
	 }
	
	 public void setGoodsName(String goodsName) {
		 this.goodsName = goodsName;
	 }
	
	 public String getFactory() {
		 return factory;
	 }
	
	 public void setFactory(String factory) {
		 this.factory = factory;
	 }
	
	 public String getSale() {
		 return sale;
	 }
	
	 public void setSale(String sale) {
		 this.sale = sale;
	 }
 }