package com.liming.ts.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.liming.ts.common.PageParam;
import com.liming.ts.dao.ITableIpDao;
import com.liming.ts.entity.TableIp;
/**
 * service层(逻辑层 )
 * @author 李明
 *
 */
@Service
public class TableIpService {

	@Resource
	ITableIpDao  dao;
	
	//交给dao层   功能：获取ip总数
	public int getRowCount() {
		
		return dao.GetRowCount();
	}

	
	public PageParam getIpListByPage(PageParam pageParam) {
		int currPage = pageParam.getCurrPage();
		// limit  offset,size
		int offset = (currPage - 1) *PageParam.pageSize;
		int size =PageParam.pageSize;
		
		Map<String, Object> params =new HashMap<String, Object>();		
		params.put("offset", offset);
		params.put("size", size);
		
		List<TableIp> ipList = dao.selectByParams(params);
		pageParam.setData(ipList);
		
	
		

		return pageParam;
	}

	
	
	public String printIp(String number, String country, String isp) {
		
		int size =100;
		
		try {
			size =Integer.parseInt(number);
		} catch (Exception e) {
			// TODO: handle exception
		}
		Map<String, Object>  params = new HashMap<String, Object>();
		params.put("size", size);
		params.put("country", country);
		params.put("isp", isp);
		
		List<TableIp> ipList = dao.fetchByParams(params);
		
		StringBuilder  sBuilder  =new StringBuilder();
		
		for(TableIp tableIp :ipList){
			
			sBuilder.append(tableIp.getIp()).append(":").append(tableIp.getPort()).append("  ").append(tableIp.getCountry()).append("  ").append(tableIp.getIsp()).append("  ").append(tableIp.getFindTime());
			sBuilder.append("\r\n");
		}
	
		return sBuilder.toString();
	}

}
