package com.controller;

import java.util.UUID;

public class GetID {
	public static String uuid(){
		String getid=UUID.randomUUID().toString().replace("-", "");
		return getid;
		}
	
}
