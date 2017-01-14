package com.liming.ts.dao;

import java.util.List;
import java.util.Map;



import org.springframework.stereotype.Repository;

import com.liming.ts.entity.TableIp;
/**
 * 
 * 数据层
 * @author 李明
 *
 */
@Repository
public interface ITableIpDao {
	
	//交给mapper.xml sql语句去查询
	int GetRowCount();
	

	List<TableIp> selectByParams(Map<String, Object> params);


	List<TableIp> fetchByParams(Map<String, Object> params);

}
