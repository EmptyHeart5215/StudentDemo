package com.liming.ts.entity;

import com.mysql.fabric.xmlrpc.base.Data;

/**
 *  层级：Mode实体层 
 * 功能：数据库tableip表的实体类
 * @author 李明
 *
 */
public class TableIp {
	
	private int id;
	
	private String ip;
	
	private String port;
	
	private String country;
	
	private String  province;
	
	private String city;
	
	private String isp;
	
	private String findTime;

	
	
	
	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getPort() {
		return port;
	}

	public void setPort(String port) {
		this.port = port;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}



	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getIsp() {
		return isp;
	}

	public void setIsp(String isp) {
		this.isp = isp;
	}

	public String getFindTime() {
		return findTime;
	}

	public void setFindTime(String findTime) {
		this.findTime = findTime;
	}
	
	
	
}
