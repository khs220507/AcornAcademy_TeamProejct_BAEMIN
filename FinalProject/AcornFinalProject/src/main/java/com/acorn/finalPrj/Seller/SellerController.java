package com.acorn.finalPrj.Seller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class SellerController {
	@Autowired
	SellerRepository rep;
	

	@GetMapping("/Sellerone")
	public String selectAll( Model model) {
		SellerDTO result  = rep.select("testid");
		model.addAttribute("test", result);
		System.out.println( result);
		return "Sellerone";
		}
	
	@GetMapping("/sellerall")
	public String  main(Model model ) {		
		List<SellerDTO> result;
		try {
			result = rep.selectAll();
			
			model.addAttribute("list", result);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "sellerall";
	}
}
