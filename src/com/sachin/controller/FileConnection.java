package com.sachin.controller;

import java.io.File;

public class FileConnection {
	private static File file=null;
	
	public static File connect(String fileName)
	{
		try
		{
			file= new File("D:\\Sachin\\"+fileName);
			if(!file.exists())
			{
				  file.createNewFile();
				  System.out.println("New file has been created to the current directory.....");
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return file;

	}

}
