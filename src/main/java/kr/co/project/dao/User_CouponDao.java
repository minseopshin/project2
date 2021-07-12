package kr.co.project.dao;

public interface User_CouponDao {
	public void check(String userid,String couponid, String pubDate, String expDate);
	public String get_couponid(String id);
	public Integer birth_chk(String userid);
	public String birth_exp(String userid);	
	public String get_birth(String userid);
}
