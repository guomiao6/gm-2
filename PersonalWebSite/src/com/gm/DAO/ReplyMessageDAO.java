package com.gm.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gm.entity.ReplyMessage;

@Repository
public class ReplyMessageDAO {
	@Autowired
	private SessionFactory sessionFactory;
	private Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	
	//´æ´¢Ò»Ìõ»Ø¸´
	public boolean saveReplyMessage(ReplyMessage replyMessage)
	{
		try {
			getSession().save(replyMessage);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
}
