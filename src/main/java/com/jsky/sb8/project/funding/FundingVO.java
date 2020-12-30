package com.jsky.sb8.project.funding;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.CreationTimestamp;

import com.jsky.sb8.project.category.CategoryVO;
import com.jsky.sb8.project.faq.FaqVO;
import com.jsky.sb8.project.funding.reward.RewardVO;
import com.jsky.sb8.project.maker.MakerVO;

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
	@Transient
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
	@Transient
	private long countDown;
	@Column
	private long categoryNum2;
	@Column
	private String summary;
	@Column
	private String projectGoal;
	
	@Transient
	private long achievePercent;
	@Transient
	private String achieveAmount;
	@Transient
	private long showPercent;
	@Transient
	private String openDate;
	
	@ManyToOne
	@JoinColumn(name = "makerNum")
	private MakerVO makerVO;
	
	@OneToMany(mappedBy = "fundingVO", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<FaqVO> faqVOs;
	
	@OneToMany(mappedBy = "fundingVO", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<RewardVO> rewardVOs;

	// 자식
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "categoryNum")
	private CategoryVO categoryVO;
	
	public long getCountDown() {
		
		Calendar ca = Calendar.getInstance();
		Date today = new Date(ca.getTimeInMillis());
		
		long result = this.getDeadline().getTime() - today.getTime();
		result = result/(24*60*60*1000);
		
		if(result < 0) {
			result = 0;
		}
		return result;
		
	}
	
	public String getOpenDate() {
		
		try {
			
			SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
			String startDate = format.format(this.startDate);
			
			DateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
			java.util.Date date;
			
			date = dateFormat.parse(startDate);
			
			Calendar ca = Calendar.getInstance();
			ca.setTime(date);
			
			int dayOfWeek = ca.get(Calendar.DAY_OF_WEEK);
			String korDayOfWeek = "";
			
			switch (dayOfWeek) {
				case 1:
					korDayOfWeek = "일";
					break;
				case 2:
					korDayOfWeek = "월";
					break;
				case 3:
					korDayOfWeek = "화";
					break;
				case 4:
					korDayOfWeek = "수";
					break;
				case 5:
					korDayOfWeek = "목";
					break;
				case 6:
					korDayOfWeek = "금";
					break;
				case 7:
					korDayOfWeek = "토";
					break;
			}
			
			format = new SimpleDateFormat("MM/dd");
			startDate = format.format(this.startDate) + "("+korDayOfWeek+")";
			
			return startDate;
		
		} catch (ParseException e) {
			e.printStackTrace();
			return "Funding VO getOpenDate Exception";
		}
		
	}
	
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
