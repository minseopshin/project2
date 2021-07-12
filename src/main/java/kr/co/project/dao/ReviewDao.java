package kr.co.project.dao;

import java.util.ArrayList;

import kr.co.project.dto.ReviewDto;

public interface ReviewDao {
	public ArrayList<ReviewDto> review_best(String prd_name,int index);
	public ArrayList<ReviewDto> review_date(String prd_name,int index);
	public ArrayList<ReviewDto> review_rating(String prd_name,int index);
	public String review_count(String prd_name);
	public String qna_count(String prd_name); // 상품문의 갯수
	public Integer chk_check(ReviewDto rdto);
	public void rwrite_ok(ReviewDto rdto);
	public void rupdate_ok(ReviewDto rdto);
	public void rdelete(int id);
	public void review_dap_write_ok(ReviewDto rdto);
	public void review_dap_update_ok(ReviewDto rdto);
	public Integer get_pagecnt();
}
