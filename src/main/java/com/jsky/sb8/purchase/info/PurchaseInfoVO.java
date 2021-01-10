package com.jsky.sb8.purchase.info;

import java.sql.Timestamp;
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
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import com.jsky.sb8.member.MemberVO;
import com.jsky.sb8.purchase.PurchaseVO;

import lombok.Data;

@Data
@Entity(name = "PurchaseInfo")
@Table(name = "PurchaseInfo")
public class PurchaseInfoVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long orderNum;
	@Column
	private String buyer_name;
	@Column
	private String buyer_postcode;
	@Column
	private String buyer_addr;
	@Column
	private String buyer_tel;
	@Column
	private String merchant_uid;
	@Column(updatable = false)
	private Timestamp scheduled_at;
	@Column(updatable = false)
	private Timestamp paid_at;
	@Column
	private String paid_method;
	@Column
	private long amount;
	@Column
	@CreationTimestamp
	private Timestamp ordered_at;
	@Column
	private String custom_data;
	
	@OneToMany(mappedBy = "purchaseInfoVO", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<PurchaseVO> purchaseVOs;
	
	@ManyToOne
	@JoinColumn(name = "memberNum")
	private MemberVO memberVO;
	
	
}
