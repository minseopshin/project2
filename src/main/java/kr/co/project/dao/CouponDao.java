package kr.co.project.dao;

import java.util.ArrayList;

import kr.co.project.dto.CouponDto;
import kr.co.project.dto.User_CouponDto;

public interface CouponDao {
	public ArrayList<CouponDto> coupon();
	public Integer check(String id, String userid);
}
