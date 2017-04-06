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
	
	//��ȡ���е�Message���������ã�
	@Deprecated
	public List<Message> getAllMessage()
	{
		String hql = "from Message";
		Query query = getSession().createQuery(hql);
		return (List<Message>)query.list();
	}
	//��ʱ�䵹�򣬵õ��ӵ�first����ʼ��size��Message
	public List<Message> getMessage(Integer first, Integer size)
	{
		String hql = "from Message m order by m.createDate desc";
		Query query = getSession().createQuery(hql).setFirstResult(first).setMaxResults(size);
		return query.list();
	}
	//�洢һ������
	public boolean saveMessage(Message message)
	{
		try {
			getSession().save(message);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	//�����ܼ�¼����
	public Long getMessageCount()
	{
		String hql = "select count(*) from Message";
		Query query = getSession().createQuery(hql);
		return (Long)query.uniqueResult();
	}
	//ͨ��no�õ�Message
	public Message getMessageByNo(Long no)
	{
		String hql = "from Message m where m.no=?";
		Query query = getSession().createQuery(hql).setLong(0, no);
		return (Message) query.uniqueResult();
	}
}
