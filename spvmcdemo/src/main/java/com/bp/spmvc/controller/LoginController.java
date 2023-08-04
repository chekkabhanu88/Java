package com.bp.spmvc.controller;

 

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bp.spmvc.dao.UserDAO;

 

@Controller   //bean class or u can call component as well

public class LoginController {
	@Autowired
	UserDAO udao;

       @GetMapping("/loginPage")
      // @RequestMapping(value="/loginPage",method=RequestMethod.GET)

       public String geLoginPage()

       {

           return "Login";

       }
       @PostMapping("/validateUser")
       public String authenticateUser(@RequestParam("uname")String username,@RequestParam("pwd")String password,Model model,HttpServletResponse response)
       {
    	   
    	   User user= new User(username,password);
    	  // UserDAO udao=new UserDAO();
    	  if(udao.searchUser(user))
    	  {
    		  response.addCookie(new Cookie("username",username));
    		  return "Services";
    	  }	   
    	   String message="invalid username/password...sorry";
    	   model.addAttribute("userMessage",message);
    	   return "Display";
    	  
       
       
       }
       
       
       
       
       
       
       
       
       
       
       
       
       
       /*  public ModelAndView uthenticateUser(@RequestParam("uname")String username,@RequestParam("pwd")String password,Model model)
       {
       
    	   String message="invalid username/password...sorry";
     	  if(username.equals("Ajay") && password.equals("Ajay@123"))
     		  message="hello"+username+",welcome to spring mvc world";
     	  return new ModelAndView("Display","userMessage",message);
       }*/

}