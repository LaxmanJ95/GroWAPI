package com.grocery.clib.util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class MyCounterInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
    public boolean preHandle (HttpServletRequest request,
                              HttpServletResponse response,
                              Object handler) throws Exception {
//        HttpSession session = request.getSession(true);
//        Cookie cookie = null;
//        System.out.println("Prehandler "+request.getRequestURL().toString()+"  cookie");
//        if(request.getRequestURL().toString().equals(" http://localhost:8080/groWAPI/usermgmt/login")){
//       
//        }
//        if (session.getAttribute("userName") != null) {
//            System.out.println("PreHandlrer"+session.getAttribute("userName"));
//        }
        return true;
    }
}
