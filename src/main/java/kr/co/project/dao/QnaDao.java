package kr.co.project.dao;

import java.util.ArrayList;

import kr.co.project.dto.QnaDto;

public interface QnaDao {
	public ArrayList<QnaDto> qlist(String prd_name,int index1);
	public void qwrite_ok(QnaDto qdto);
	public void qupdate_ok0(QnaDto qdto);
	public void qupdate_ok1(QnaDto qdto);
	public void qdelete(int id);
	public void qna_dap_write_ok(QnaDto qdto);
	public void qna_dap_update_ok(QnaDto qdto);
	public Integer get_pagecnt_qna();
}
