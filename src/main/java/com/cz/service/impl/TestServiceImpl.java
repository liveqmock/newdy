/**
 * 
 */
package com.cz.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cz.dao.TestDao;
import com.cz.model.Test;
import com.cz.service.TestService;

/**
 * @author hyrt001
 *
 */
@Service("testService")
public class TestServiceImpl implements TestService{

	@Autowired
	private TestDao testDao;


	public String addInfo(Test addInfo) {
		if (testDao.insertSelective(addInfo) == 1) {
			return "添加成功";
		}
		return "添加失败";
	}
	
	public List<Test> getAll() {
		return testDao.getAll();
	}
	
	public String delete(String id) {
		if (testDao.deleteByPrimaryKey(id) == 1) {
			return "删除成功";
		}
		return "删除失败";
	}
	
	public Test findById(String id) {
		return testDao.selectByPrimaryKey(id);
	}
	
	
	public String update(Test addInfo) {
		if (testDao.updateByPrimaryKeySelective(addInfo) == 1) {
			return "更新成功";
		}
		return "更新失败";
	}

}
