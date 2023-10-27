package com.acorn.finalPrj.Seller;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.finalPrj.userDTO;

@Repository
public class SellerRepository {
	 	@Autowired
	    private SqlSession session;
	 	
	    private static String namespace = "com.acorn.SellerMapper.";
	    
	    public List<SellerDTO> selectAll() throws Exception {
	    	System.out.println("good");
	        return session.selectList(namespace+"selectAll");
	    }
	    public SellerDTO select(String id) {
	    	return session.selectOne(namespace+"selectOne",id);
	    }
	    
	   
	   
	    
}