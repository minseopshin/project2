package kr.co.project;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;

import kr.co.project.dao.MainDao;

public class Scheduler {
	@Autowired private SqlSession sqlSession;
	
	@Scheduled(cron="0 0 09 * * *")//(fixedDelay=2000)
	public void print()	{
		MainDao mdao = sqlSession.getMapper(MainDao.class);
		mdao.insert_analysis();
		System.out.println("스케쥴러");
	}
}
