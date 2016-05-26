package com.ty.design.service;

import java.util.List;

import com.ty.design.base.BaseDao;
import com.ty.design.entity.News;

public interface NewsService extends BaseDao<News>{ 
	
	@Override
	public List<News> findAll();
}
