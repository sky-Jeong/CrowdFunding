package com.jsky.sb8.project.funding.detail.news;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NewsService {

	@Autowired
	private NewsRepository newsRepository;
	
	public List<NewsVO> getNewsList(long num, String charDivision) throws Exception{
		return newsRepository.findByTmpNumAndCharDivisionContaining(num, charDivision);
	}
	
}
