package com.acorn.finalPrj.Seller;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.acorn.finalPrj.userRepositoryTest;

import lombok.extern.log4j.Log4j;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/test.xml" , "file:src/main/webapp/WEB-INF/spring/**/test2.xml"} )
@Log4j
public class SellerRepositoryTest {
	
	@Autowired
	SellerRepository rep;
	
	@Test
	public void test() {
		//fail("Not yet implemented");
		
		SellerDTO result =rep.select("testid");
		System.out.println(result);
	}

}
