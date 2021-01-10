package com.jsky.sb8.project.funding.reward;

import java.text.DecimalFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.jsky.sb8.project.funding.FundingVO;

import lombok.Data;

@Data
@Table(name = "FundingReward")
@Entity(name = "FundingReward")
public class RewardVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long productNum;
	@Column
	private String title;
	@Column
	private String product;
	@Column
	private long amount;	// 금액
	@Column
	private long limitedQuantity;
	@Column
	private long quantity;
	@Column
	private int shippingFee;
	@Column
	private String shippingDate;
	@Column
	private String option;
	
	@ManyToOne
	@JoinColumn(name = "projectNum")
	private FundingVO fundingVO;
	
	@Transient
	private String amountStr;
	@Transient
	private String shippingFeeStr;
	@Transient
	private long remainder;

	public long getRemainder() {
		return this.limitedQuantity - this.quantity;
	}
	
	public String getAmountStr() {
		DecimalFormat df = new DecimalFormat("#,###");
		return df.format(this.getAmount());
	}
	
	public String getShippingFeeStr() {
		DecimalFormat df = new DecimalFormat("#,###");
		return df.format(this.getAmount());
	}
	
}
