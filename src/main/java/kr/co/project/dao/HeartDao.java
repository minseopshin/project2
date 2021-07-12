package kr.co.project.dao;


public interface HeartDao {
	public void heart_on(int prd_id,String userid);
	public void heart_out(int prd_id,String userid);
	public Integer heartyn(String prd_id,String userid);
	public Integer heartcnt(String prd_id);
	public void heartplus(int prd_id);
	public void heartminus(int prd_id);
}
