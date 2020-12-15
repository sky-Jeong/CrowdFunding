package com.jsky.sb8.project.category;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity(name = "Category")
@Table(name = "Category")
public class CategoryVO {

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
