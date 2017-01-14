package com.liming.ts.common;

import java.util.List;

import com.liming.ts.entity.TableIp;

/***
 * 定义：分页类
 * @author 李明
 *
 */
public class PageParam {

	private int currPage; //当前页
	
	private int totalPage;//总页
	
	private int rowCount;//总记录数
	
	public static int pageSize = 10;//页大小
	
	private List<TableIp> data;

	public int getCurrPage() {
		return currPage;
	}

	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getRowCount() {
		return rowCount;
	}

	public void setRowCount(int rowCount) {
		
		//总记录数%页大小=总页
		int totalPage = rowCount/pageSize;	
		if(rowCount %pageSize>0){
			totalPage+=1;
		}
		setTotalPage(totalPage);
		
		this.rowCount = rowCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public List<TableIp> getData() {
		return data;
	}

	public void setData(List<TableIp> data) {
		this.data = data;
	}
	
	
	
}
