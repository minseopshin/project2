package kr.co.project.dto;

public class CouponDto {
	private int id, state;	
	private double dc;
	private String couponid, coupon_img, name;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCouponid() {
		return couponid;
	}
	public void setCouponid(String couponid) {
		this.couponid = couponid;
	}
	public double getDc() {
		return dc;
	}
	public void setDc(double dc) {
		this.dc = dc;
	}
	public String getCoupon_img() {
		return coupon_img;
	}
	public void setCoupon_img(String coupon_img) {
		this.coupon_img = coupon_img;
	}	
}
