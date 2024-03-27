package com.jsp.Employee.config;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.context.annotation.ComponentScan;

@Configurable
@ComponentScan(basePackages = "com.jsp.Employee")
public class MyConfig {

}
