package model;

import com.google.gson.Gson;


public class JsonConverter {

	
	public static String getModel(Object ob){
		Gson gson = new Gson();
		String json = gson.toJson(ob);
		return json;
	}
	
}
