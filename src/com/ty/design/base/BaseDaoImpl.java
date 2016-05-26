package com.ty.design.base;

import java.lang.reflect.ParameterizedType;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@SuppressWarnings("all")
public abstract class BaseDaoImpl<T> implements BaseDao<T>{

	@Resource
	private SessionFactory sessionFactory;
	
	protected Class<T> clazz;
	
	/**
	 * 通过反射获取clazz
	 * this.getClass()：代表的是子类创建的实例对象UserDaoImpl
	 */
	public BaseDaoImpl(){
		ParameterizedType type = (ParameterizedType) this.getClass().getGenericSuperclass();
		this.clazz = (Class) type.getActualTypeArguments()[0];
	}
	
	public void delete(Long id) {
		Object object = getSession().get(clazz, id);
		getSession().delete(object);
	}


	public List<T> findAll() {
		//return getSession().createQuery("from "+clazz.getSimpleName()).list();
		return getSession().createCriteria(clazz).list();
	}

	public T getById(Long id) {
		if(id == null){
			return null;
		}
		return (T) getSession().get(clazz, id);
	}

	public void save(T entity) {
		getSession().save(entity);
	}

	public void update(T entity) {
		getSession().update(entity);
	}

	public Set<T> getByIds(Long[] ids) {
		if(ids == null || ids.length==0){
			return null;
		}
		List list = getSession().createCriteria(clazz).add(Restrictions.in("id", ids)).list();
		return new HashSet(list); 
	}
	
	/**
	 * 获取当前可用的Session
	 * @return
	 */
	protected Session getSession(){
		return sessionFactory.getCurrentSession();
	} 
}
