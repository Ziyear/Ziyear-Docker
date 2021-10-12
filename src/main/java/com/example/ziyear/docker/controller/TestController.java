package com.example.ziyear.docker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 * 功能描述 : TODO
 *
 * @author zhaorui 2021-10-12 14:46
 */
@RestController
@RequestMapping("/api")
public class TestController {

    @Autowired
    private HttpServletRequest request;

    @RequestMapping("/test")
    public String test() {
        return request.getServerName() + " Hello World";
    }
}
