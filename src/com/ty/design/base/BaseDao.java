package com.ty.design.base;

import java.util.List;
import java.util.Set;

/**
 * 基础接口
 * 接口可以继承
 * */
public interface BaseDao<T> {
	
	 /**
	  * 保存实体
	  * */
	 void save(T entity);
	 /**
	  *	删除实体 
	  * */
	 void delete(Long id);
	 /**
	  * 更新实体
	  * */
	 void update(T entity);
	 /**
	  * 获取实体;如果id为空，则返回null
	  * */
	 T getById(Long id);
	 /**
	  * 获取实体2
	  * */
	 Set<T> getByIds(Long[] ids); 
	 /**
	  * 查询所有
	  * */
	 List<T> findAll();
}
