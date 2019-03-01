package com.javaflocks.util;

import java.util.Properties;
public class PropertyUtil {

	
	
	public static String getPropertyValues(String key) {

		try {
			if (properties == null) {
				properties = new Properties();
				properties.load(PropertyUtil.class.getClassLoader().getResourceAsStream("ApplicationResource.properties"));
			}

		  return properties.getProperty(key);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "";
	}

	private static Properties properties = null;

}