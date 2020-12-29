package com.jsky.sb8.email;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Builder;
import lombok.Data;

@Data
@Entity(name = "EmailChk")
@Table(name = "EmailChk")
public class EmailChkVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long chkNum;
	@Column
	private String email;
	@Column
	private long confirmNum;
	@Column
	private String confirmChk;
	@Column(updatable = false)
	@CreationTimestamp
	private Timestamp requestTime;
	@Column
	private Timestamp successTime;
	
	public void setConfirmChk(String confirmChk) {
		System.out.println("VO print confirm chk : " + confirmChk);
		if (confirmChk == null || confirmChk == "") {
			confirmChk = "N";
		}
		this.confirmChk = confirmChk;
	}
	
	public String getConfirmChk() {
		if (this.confirmChk == null) {
			this.confirmChk = "N";
		}
		return this.confirmChk;
	}
	
}
