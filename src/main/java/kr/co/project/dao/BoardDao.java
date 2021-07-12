package kr.co.project.dao;

import java.util.ArrayList;

import kr.co.project.dto.BoardDto;
import kr.co.project.dto.BoardDto2;

public interface BoardDao {
   public void write(BoardDto bdto);
   public ArrayList<BoardDto> list(String cla,String sword,int index);
   public BoardDto content(String id);
   public void readnum(String id);
   public BoardDto update(String id);
   public void update_ok(BoardDto bdto);
   public String get_pwd(int id);
   public void delete(int id);
   public Integer pwd_check(BoardDto bdto);
   //페이지
   public Integer get_pagecnt();	//고객센터- 공지사항
   public Integer get_num();
   public Integer get_pagecnt2();	//고객센터- 1대1문의
   
   // 1대1문의

   public void writeanswer(BoardDto2 bdto2);
   public BoardDto2 contentanswer(String id);
   public void readnumanswer(String id);
   public BoardDto2 updateanswer(String id);
   public void updateanswer_ok(BoardDto2 bdto2);
   public ArrayList<BoardDto2> listanswer(String cla, String sword, int index);
   public void deleteanswer(int id);
  

}
