package com.jsky.sb8.project.funding.detail.news;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NewsService {

	@Autowired
	private NewsRepository newsRepository;
	
	public long getNewsCount(long tmpNum) throws Exception{
		return newsRepository.getNewsCount(tmpNum);
	}
	
	public Optional<NewsVO> findById(long newsNum) throws Exception{
		return newsRepository.findById(newsNum);
	}
	
	public List<NewsVO> getNewsList(long num, String charDivision, String order) throws Exception{
		
		if(order.equals("P")) {
			return newsRepository
					.findByTmpNumAndCharDivisionContainingOrderByRegDate(num, charDivision);
		} else {
			return newsRepository
					.findByTmpNumAndCharDivisionContainingOrderByRegDateDesc(num, charDivision);
		}
		
	}
	
}
