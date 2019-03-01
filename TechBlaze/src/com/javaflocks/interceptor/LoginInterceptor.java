/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaflocks.interceptor;

/**
 *
 * @author KPFIUSer
 */
import java.util.Map;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor  extends AbstractInterceptor {

        @Override
        public String intercept(ActionInvocation invocation) throws Exception {
                Map<String, Object> session = invocation.getInvocationContext().getSession();

                String loginId = (String) session.get("loginId");

                if (loginId == null) 
                {
                        return "login";
                } 
                else 
                {
                        return invocation.invoke();
                }
        }
}