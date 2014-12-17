package com.sachin.data;

public class Hotel {
	private String hotelId;	
	private String name;
	private String country;
	private String city;
	private String streetAddress;
	private String description;
	private String userCity;	
	private String latitude;
	private String longitude;	
	private String checkInDate;	
	private String checkOutDate;

	
	
	public String getHotelId() {
		return hotelId;
	}
	public void setHotelId(String hotelId) {
		this.hotelId = hotelId;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}




	public String getCountry() {
		return country;
	}




	public void setCountry(String country) {
		this.country = country;
	}




	public String getCity() {
		return city;
	}




	public void setCity(String city) {
		this.city = city;
	}




	public String getStreetAddress() {
		return streetAddress;
	}




	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}




	public String getDescription() {
		return description;
	}




	public void setDescription(String description) {
		this.description = description;
	}




	public String getUserCity() {
		return userCity;
	}




	public void setUserCity(String userCity) {
		this.userCity = userCity;
	}




	public String getLatitude() {
		return latitude;
	}




	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}




	public String getLongitude() {
		return longitude;
	}




	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}




	public String getCheckInDate() {
		return checkInDate;
	}




	public void setCheckInDate(String checkInDate) {
		this.checkInDate = checkInDate;
	}




	public String getCheckOutDate() {
		return checkOutDate;
	}




	public void setCheckOutDate(String checkOutDate) {
		this.checkOutDate = checkOutDate;
	}


	@Override
	public String toString() {
		
		   return "{" + '\"' + "hotelId" + '\"' + ": " + hotelId + ','
		   + '\"' + "name" + '\"' + ": " + '\"' + name + '\"' + ','
		   + '\"' + "country" + '\"' + ": " + '\"' + country + '\"' + ','
		   + '\"' + "city" + '\"' + ": " + '\"' + city + '\"' + ','
		   + '\"' + "streetAddress" + '\"' + ": " + '\"' + streetAddress + '\"' + ','
		   + '\"' + "description" + '\"' + ": " + '\"' + description + '\"' + ','
		   + '\"' + "userCity" + '\"' + ": " + '\"' + userCity + '\"' + ','
		   + '\"' + "latitude" + '\"' + ": " + '\"' + latitude + '\"' + ','
		   + '\"' + "longitude" + '\"' + ": " + '\"' + longitude + '\"' + ','
		   + '\"' + "checkInDate" + '\"' + ": " + '\"' + checkInDate + '\"' + ','
		   + '\"' + "checkOutDate" + '\"' + ": " + '\"' + checkOutDate + '\"' + "}";   
	}




}

	
	
	


