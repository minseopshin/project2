package kr.co.project.dto;

public class PaymentDto {
	private int id,productid,num,price,order_num,state,p;
	private String userid, prd_name, orderday,payment_method1,payment_method2,payment_method3,prd_img,coupon_id,couponid,product_id;
	private float dc;
	
	
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public float getDc() {
		return dc;
	}
	public void setDc(float dc) {
		this.dc = dc;
	}
	public String getCouponid() {
		return couponid;
	}
	public void setCouponid(String couponid) {
		this.couponid = couponid;
	}
	public int getP() {
		return p;
	}
	public void setP(int p) {
		this.p = p;
	}
	public String getCoupon_id() {
		return coupon_id;
	}
	public void setCoupon_id(String coupon_id) {
		this.coupon_id = coupon_id;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getPrd_img() {
		return prd_img;
	}
	public void setPrd_img(String prd_img) {
		this.prd_img = prd_img;
	}
	public String getOrderday() {
		return orderday;
	}
	public void setOrderday(String orderday) {
		this.orderday = orderday;
	}
	public int getOrder_num() {
		return order_num;
	}
	public void setOrder_num(int order_num) {
		this.order_num = order_num;
	}
	public String getPayment_method1() {
		return payment_method1;
	}
	public void setPayment_method1(String payment_method1) {
		this.payment_method1 = payment_method1;
	}
	public String getPayment_method2() {
		return payment_method2;
	}
	public void setPayment_method2(String payment_method2) {
		this.payment_method2 = payment_method2;
	}
	public String getPayment_method3() {
		return payment_method3;
	}
	public void setPayment_method3(String payment_method3) {
		this.payment_method3 = payment_method3;
	}
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPrd_name() {
		return prd_name;
	}
	public void setPrd_name(String prd_name) {
		this.prd_name = prd_name;
	}
}
