package com.jsky.sb8.project.category;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.jsky.sb8.project.funding.FundingVO;

import lombok.Data;

@Data
@Entity(name = "Category")
@Table(name = "Category")
public class CategoryVO {
	
	// 부모
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long categoryNum;
	@Column
	private String charDivision;
	@Column
	private String categoryName;
	@Column
	private String categoryImage;
	
}
