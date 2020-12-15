package com.jsky.sb8.util;

import lombok.Data;

@Data
public class Pager {

	private int page;
	private int size;
	
	private long totalCount;
	private long totalPage;
	
	private long perBlock;
	private long totalBlock;
	
	private boolean nextChk;
	private boolean beforeChk;
	
	public void btnCheck() {
		
		totalPage = this.getTotalCount()/this.getSize();
		if(this.getTotalCount()%this.getSize() != 0) {
			totalPage++;
		}
		
		if(page < totalPage) {
			this.nextChk = true;
		}
		
		if(page > 1) {
			this.beforeChk = true;
		}
		
	}
	
}
