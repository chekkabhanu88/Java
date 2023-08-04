package com.bp.spcd.beans;

import java.util.Map;

public class Country 
{
	private String countryname;
	private String currencyname;
	private Map<String,String> states;
	
	public Country() {}

	public String getCountryname() {
		return countryname;
	}

	public void setCountryname(String countryname) {
		this.countryname = countryname;
	}

	public String getCurrencyname() {
		return currencyname;
	}

	public void setCurrencyname(String currencyname) {
		this.currencyname = currencyname;
	}

	public Map<String,String> getStates() {
		return states;
	}

	public void setStates(Map<String,String> states) {
		this.states = states;
	}
	
	

}
