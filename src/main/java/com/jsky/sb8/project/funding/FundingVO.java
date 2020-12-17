package com.jsky.sb8.project.funding;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.CreationTimestamp;

import com.jsky.sb8.project.category.CategoryVO;

import lombok.Data;

@Data
@Entity(name = "FundingProject")
@Table(name = "FundingProject")
public class FundingVO {

	private static final String referencedColumnName = null;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long num;
	@Column
	private String title;
	@Column
	private String manager;
	@Column
	private String charDivision;
	@Transient
	private long categoryNum;
	@Column
	private long makerNum;
	@Column
	private String email;
	@Column
	private String businessDivision;
	@Column
	private String contents;
	@Column(updatable = false)
	@CreationTimestamp
	private Timestamp regDate;
	@Column
	private Date startDate;
	@Column
	private Date deadline;
	@Column
	private Date payDate;
	@Column
	private Date sendDate;
	@Column
	private long target;
	@Column
	private long achievement;
	@Column
	private String status;
	@Column
	private long sign;
	@Column
	private long peopleLike;
	@Column
	private long supporter;
	@Column
	private String image;
	@Column
	private long countDown;
	@Column
	private long categoryNum2;
	
	@Transient
	private long achievePercent;
	@Transient
	private String achieveAmount;
	@Transient
	private long showPercent;

	// 자식
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "categoryNum")
	private CategoryVO categoryVO;
	
	public long getAchievePercent() {
		
		if(this.getAchievement() == 0) {
			return 0;
		}

		long result = (long)((double)this.getAchievement()/this.getTarget()*100);		
		return result;
		
	}
	
	public long getShowPercent() {
		
		if(this.getAchievePercent() > 100) {
			return 100;
		}
		return this.getAchievePercent();
		
	}
	
	public String getAchieveAmount() {
		DecimalFormat df = new DecimalFormat("#,###");
		return df.format(this.getAchievement());
	}
	
	
}
