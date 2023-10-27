package com.acorn.finalPrj.Seller;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AnswerDTO {

	int answerCode;
	int reviewCode;
	String answerDate;
	String answerContent;
	
}
