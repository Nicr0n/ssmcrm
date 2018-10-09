package net.wanho.controller.login;

import net.wanho.model.LogIn;
import net.wanho.service.LoginService;
import net.wanho.util.CrmResult;
import net.wanho.util.MD5Util;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by sapling on 2017-12-24.
 */
@Controller
@RequestMapping("/login")
public class LoginController {
	@Resource
	private LoginService loginService;

	@RequestMapping(value = "/loginCheck", method = RequestMethod.POST)
	@ResponseBody
	public CrmResult loginCheck(LogIn logIn,HttpServletRequest req) {
		CrmResult result = new CrmResult();
		System.out.println(logIn.getEmployeeId());
		System.out.println(logIn.getEmmPassword());		
		LogIn login1 = new LogIn();
		login1 = loginService.login(logIn);	
		
		String str="123456";
		if (logIn.getEmmPassword().equals(str)) {
			HttpSession session=req.getSession();
			session.setAttribute("login1", login1);
			result.setData(2);
		}else if (login1!=null) {
			HttpSession session=req.getSession();
			session.setAttribute("login1", login1);
			result.setData(1);
		}else if (login1==null){
			result.setData(0);
		}
		return result;
		
	}

	@RequestMapping("/loginToCms")
	public String loginToCms() {
		return "redirect:/control/countAll";
	}

	@RequestMapping("/updatePassword")
	@ResponseBody
	public CrmResult updatePassword(LogIn logIn ) {
		System.out.println("updatePassword1");
		System.out.println(logIn.getEmmPassword());
		 loginService.updatePassword(logIn);
		 CrmResult re=new CrmResult();
		 re.setMsg("成功");
		 re.setData(1);
		return re;
		
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		//清除Session
		session.invalidate();
		return "redirect:/login.jsp";
	}

	@RequestMapping("/modify")
	public String modify() {
		return "redirect:/updatepassword.jsp";
	}
}
