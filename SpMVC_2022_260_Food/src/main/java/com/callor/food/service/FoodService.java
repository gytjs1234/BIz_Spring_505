package com.callor.food.service;

import java.util.List;

import com.callor.food.model.Fooditem;

public interface FoodService {

	
	public String queryString(String search);
	public List<Fooditem> getFoodItems(String queryString);
}
