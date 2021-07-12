package kr.co.project.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.project.dto.MemberDto;

public interface MemberDao {
   public MemberDto login_ok(MemberDto mdto);
   public MemberDto member_ok(MemberDto mdto);
   public String userid_ok(MemberDto mdto); //  아이디 찾기
   public Integer userid_check(String userid);
   public String pwd_ok(MemberDto mdto); //  비밀번호찾기
   public MemberDto mypage(String userid);
   public MemberDto mypage_ok(MemberDto mdto); //마이페이지 회원정보 변경을 위함
   public MemberDto changepwd(String userid);	//비밀번호변경페이지
   public MemberDto changepwd_ok(MemberDto mdto); //마이페이지 비밀번호 변경을 위함
   public MemberDto changepwd2(String userid);	//비밀번호변경페이지
   public MemberDto changepwd2_ok(MemberDto mdto); //마이페이지 비밀번호 변경을 위함
   public String member_out(MemberDto mdto);//회원탈퇴
   
   
}

