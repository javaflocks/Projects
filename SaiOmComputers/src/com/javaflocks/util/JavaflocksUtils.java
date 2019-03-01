package com.javaflocks.util;

import java.util.Random;

public class JavaflocksUtils 
{
	public static String generateRandomString(){
	Random rnd = new Random();
    int n = 100000 + rnd.nextInt(900000);
    return "SDM"+n;
	}
}
