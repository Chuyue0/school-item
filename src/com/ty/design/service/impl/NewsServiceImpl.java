package com.ty.design.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ty.design.base.BaseDaoImpl;
import com.ty.design.entity.News;
import com.ty.design.service.NewsService;

@Service
@SuppressWarnings("all")
public class NewsServiceImpl extends BaseDaoImpl<News> implements NewsService {

	@Override
	public List<News> findAll() {
		String hql = "from News n order by n.times desc";
		return getSession().createQuery(hql).list();
	}

}
