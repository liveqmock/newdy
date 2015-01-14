package com.cz.service;

import java.util.List;

import com.cz.model.Test;

public interface TestService {
	
	String addInfo(Test addInfo);

	List<Test> getAll();

	String delete(String id);

	Test findById(String id);

	String update(Test addInfo);

}
