package kr.co.project.dto;

public class ReviewDto {
	private int id,best,rating;
	private String userid,prd_name,content,dap_content;
	private String hugi_img,regdate,dap_regdate;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBest() {
		return best;
	}
	public void setBest(int best) {
		this.best = best;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDap_content() {
		return dap_content;
	}
	public void setDap_content(String dap_content) {
		this.dap_content = dap_content;
	}
	public String getHugi_img() {
		return hugi_img;
	}
	public void setHugi_img(String hugi_img) {
		this.hugi_img = hugi_img;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getDap_regdate() {
		return dap_regdate;
	}
	public void setDap_regdate(String dap_regdate) {
		this.dap_regdate = dap_regdate;
	}

}
