package com.gm.DAO;



import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gm.entity.User;

@Repository
public class UserDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	public User getUserByUsername(String username)
	{
		String hql = "from User u where u.username=?";
		Query query = getSession().createQuery(hql).setString(0, username);
		return (User)query.uniqueResult();
	}
	
	public User getUerByNickname(String nickname)
	{
		String hql = "from User u where u.nickname=?";
		Query query = getSession().createQuery(hql).setString(0, nickname);
		return (User)query.uniqueResult();
	}
	
	public boolean insertUser(User user)
	{
		try {
			getSession().save(user);
			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
	}
	
	public User validateUser(String username, String password)
	{
		String hql = "from User u where u.username=? and u.password=?";
		Query query = getSession().createQuery(hql).setString(0, username).setString(1, password);
		return (User)query.uniqueResult();
	}
	//¸üÐÂUser
	public boolean updateUser(User user)
	{
		try {
			getSession().update(user);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
}
