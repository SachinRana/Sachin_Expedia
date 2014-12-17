package com.sachin.logic;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import sun.net.www.URLConnection;

import com.google.gson.Gson;
import com.sachin.controller.FileConnection;
import com.sachin.data.Hotel;




public class CurdService
{
   	//private static String hotelDatafile="ExpediaJson.json";
	private static String hotelDatafile;
   	public static ArrayList<Hotel> selectAll()
	{
    	JSONParser parser = new JSONParser();    	
    	JSONArray jList=null;
    	ArrayList<Hotel> list=null;
    	FileReader fr=null;
    	try {
    		
    		URL url = new URL("http://deals.expedia.com/beta/deals/hotels.json");
    		java.net.URLConnection connection = url.openConnection();
    		InputStream is = connection.getInputStream();
    		InputStreamReader isr = new InputStreamReader(is);    		
    		BufferedReader in = new BufferedReader(isr);   		
    		
    		while ((hotelDatafile = in.readLine()) != null)
    	
    		{
    			Object obj = parser.parse(hotelDatafile);   	       		
	         	jList = (JSONArray)obj;
    		    System.out.println(hotelDatafile);
    	
    		}
    		
    		
    		/*
    		fr=new FileReader(FileConnection.connect(hotelDatafile));

    			if(fr.read()==-1)
    			{
    				System.out.println("File is empty......");
    				fr.close();    
    			}
    			else
    			{
    				Object obj = parser.parse(new FileReader(FileConnection.connect(hotelDatafile)));       	       	
   	         		jList = (JSONArray)obj;
   	         		fr.close();    
    			}
    		*/
    			Gson gson = new Gson();
     		
    			list = new ArrayList<Hotel>();     

    			if (jList != null) 
    			{ 
	     		   int len = jList.size();
	     		   System.out.println(len);
	     		   for (int i=0;i<len;i++)
	     		   { 
	     			  Hotel hotel = gson.fromJson(jList.get(i).toString(), Hotel.class);
	     			  list.add(hotel);
	     		   } 
	     		   System.out.println("All Record Fetched Successfully:-\n "+list);
	     		}	    	
     
	    	} catch (FileNotFoundException e) {
	    		e.printStackTrace();
	    	} catch (IOException e) {
	    		e.printStackTrace();
	    	} catch (ParseException e) {
	    		e.printStackTrace();
	    	}
			return list;
	}
   	
   	
   	
   	public static ArrayList<Hotel> findByName(String hotelName)
	{ 	

	JSONParser parser = new JSONParser();
	
	JSONArray jList=null;
	
	ArrayList<Hotel> list=null;
	
	try {
   	//	Object obj = parser.parse(new FileReader(FileConnection.connect(hotelDatafile)));
   		
   	    URL url = new URL("http://deals.expedia.com/beta/deals/hotels.json");
		java.net.URLConnection connection = url.openConnection();
		InputStream is = connection.getInputStream();
		InputStreamReader isr = new InputStreamReader(is);    		
		BufferedReader in = new BufferedReader(isr);   		
		
		while ((hotelDatafile = in.readLine()) != null)
	
		{
			Object obj = parser.parse(hotelDatafile);   	       		
         	jList = (JSONArray)obj;
		    System.out.println(hotelDatafile);
	
		}
	     
		//jList = (JSONArray) obj;		
 		Gson gson = new Gson(); 		
 		list = new ArrayList<Hotel>();    

 		if (jList != null) 
 		{ 
 		   int len = jList.size();
 		   System.out.println(len);
 		   for (int i=0;i<len;i++)
 		   { 
 			  Hotel hotel = gson.fromJson(jList.get(i).toString(), Hotel.class);
 			  if(hotel.getName().equals(hotelName))
 			  {
    			  list.add(hotel);
    			  break;
 			  }
 		   } 
 		}	    	
    	System.out.println("All Record Fetched Successfully" +hotelName +":-\n " +list);
 
	} catch (FileNotFoundException e) {
		e.printStackTrace();
	} catch (IOException e) {
		e.printStackTrace();
	} catch (ParseException e) {
		e.printStackTrace();
	}
	return list;
}

	
}
	

