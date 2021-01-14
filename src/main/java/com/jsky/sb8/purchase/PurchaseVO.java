package com.jsky.sb8.purchase;

import java.text.DecimalFormat;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.jsky.sb8.member.MemberVO;
import com.jsky.sb8.project.funding.reward.RewardVO;
import com.jsky.sb8.purchase.info.PurchaseInfoVO;

import lombok.Data;

@Data
@Entity(name = "Purchase")
@Table(name = "Purchase")
public class PurchaseVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long purchaseNum;
	@Column
	private long orderQuantity;
	@Column
	private String purchaseOption;
	@Column
	private long amount;
	
	@Transient
	private String amountStr;
	
	@ManyToOne
	@JoinColumn(name = "purchaseInfoNum")
	private PurchaseInfoVO purchaseInfoVO;
	
	@ManyToOne
	@JoinColumn(name = "rewardNum")
	private RewardVO rewardVO;
	
	@ManyToOne
	@JoinColumn(name = "memberNum")
	private MemberVO memberVO;
	
	public String getAmountStr() {
		DecimalFormat df = new DecimalFormat("#,###");
		return df.format(this.getAmount());
	}

}
