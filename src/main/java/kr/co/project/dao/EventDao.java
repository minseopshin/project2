package kr.co.project.dao;

import java.util.ArrayList;

import kr.co.project.dto.EventDto;
import kr.co.project.dto.ReviewDto;

public interface EventDao {
	public ArrayList<EventDto> list(String cla,String sword, int index);
	public Integer get_pagecnt();
	public void event_review_write_ok(EventDto edto);
	public EventDto event_review_content(String id);
	public void firstbuy();
	public EventDto event_review_update(String id);
	public void event_review_update_ok(EventDto edto);
	public void erdelete(String id);
	public void readnum(String id);
}
