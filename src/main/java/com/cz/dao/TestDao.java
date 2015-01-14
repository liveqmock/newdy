/**
 * 
 */
package com.cz.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.cz.model.Test;

/**
 * @author hyrt001
 * 
 */
@Repository("testDao")
public interface TestDao {
	
	int deleteByPrimaryKey(String id);

	int insert(Test record);

	int insertSelective(Test record);

	Test selectByPrimaryKey(String id);

	int updateByPrimaryKeySelective(Test record);

	int updateByPrimaryKey(Test record);

	List<Test> getAll();

}
