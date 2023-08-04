package com.bp.spmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bp.spmvc.dao.BankAccountDAO;

@Controller
public class BankAccountController 
{
	@Autowired
	BankAccountDAO  bdao;
	
	@GetMapping("/MoneyTransferForm")
	public String getMoneyTransferForm()
	{
		return "MoneyTransferForm";
	}
	
	@GetMapping("/transferMoney")
	public String transferMoney(@CookieValue String username,@RequestParam double amount,Model model)
	{
		String message ="Money Transfer is failed";
		if(bdao.updateBalance(username, amount))
			message ="Money transferred successfully";
		model.addAttribute("userMessage",message);
		return "Display";
	}
	
}
