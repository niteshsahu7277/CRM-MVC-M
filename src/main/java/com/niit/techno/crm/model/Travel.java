package com.niit.techno.crm.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "travel")
public class Travel {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="tid")
	private int tid;
	
	@Column(name="fromdate")
	private Date fromdate;
	
	@Column(name="todate")
	private Date todate;
	
		
	@Column(name="traveltype")
	private String traveltype;
	
	@Column(name="cid")
	private int cid;

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public Date getFromdate() {
		return fromdate;
	}

	public void setFromdate(Date fromdate) {
		this.fromdate = fromdate;
	}

	public Date getTodate() {
		return todate;
	}

	public void setTodate(Date todate) {
		this.todate = todate;
	}

	public String getTraveltype() {
		return traveltype;
	}

	public void setTraveltype(String traveltype) {
		this.traveltype = traveltype;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}
	
	

}
