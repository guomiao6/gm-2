package com.gm.DAO;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;





import com.gm.entity.Message;

@Repository
public class MessageDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	private Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	
	//获取所有的Message（尽量别用）
	@Deprecated
	public List<Message> getAllMessage()
	{
		String hql = "from Message";
		Query query = getSession().createQuery(hql);
		return (List<Message>)query.list();
	}
	//按时间倒序，得到从第first个开始的size个Message
	public List<Message> getMessage(Integer first, Integer size)
	{
		String hql = "from Message m order by m.createDate desc";
		Query query = getSession().createQuery(hql).setFirstResult(first).setMaxResults(size);
		return query.list();
	}
	//存储一条留言
	public boolean saveMessage(Message message)
	{
		try {
			getSession().save(message);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	//返回总记录条数
	public Long getMessageCount()
	{
		String hql = "select count(*) from Message";
		Query query = getSession().createQuery(hql);
		return (Long)query.uniqueResult();
	}
	//通过no得到Message
	public Message getMessageByNo(Long no)
	{
		String hql = "from Message m where m.no=?";
		Query query = getSession().createQuery(hql).setLong(0, no);
		return (Message) query.uniqueResult();
	}
}
