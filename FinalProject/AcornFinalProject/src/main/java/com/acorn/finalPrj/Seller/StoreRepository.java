package com.acorn.finalPrj.Seller;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.finalPrj.userDTO;

@Repository
public class StoreRepository {
	 	@Autowired
	    private SqlSession session;
	 	
	    private static String namespace = "com.acorn.StoreMapper.";
	    
	    public List<StoreDTO> selectAll() throws Exception {
	    	System.out.println("good");
	        return session.selectList(namespace+"selectAll");
	    }
	    public StoreDTO select(String id) {
	    	return session.selectOne(namespace+"selectOne",id);
	    }
	    
	   
	   
	    
}