package kr.co.project.dto;

public class QnaDto {
	private int id,qna_cate,state;
	private String userid,content,regdate,dap_content,dap_regdate,prd_name;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getQna_cate() {
		return qna_cate;
	}
	public void setQna_cate(int qna_cate) {
		this.qna_cate = qna_cate;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getDap_content() {
		return dap_content;
	}
	public void setDap_content(String dap_content) {
		this.dap_content = dap_content;
	}
	public String getDap_regdate() {
		return dap_regdate;
	}
	public void setDap_regdate(String dap_regdate) {
		this.dap_regdate = dap_regdate;
	}
	public String getPrd_name() {
		return prd_name;
	}
	public void setPrd_name(String prd_name) {
		this.prd_name = prd_name;
	}
}
