package com.testgen.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

@Service
public class examService {
	private static String readAll(Reader rd) throws IOException{
		StringBuilder sb = new StringBuilder();
		int cp;
		while((cp = rd.read())!= -1 ){
			sb.append((char)cp);
		}
		return sb.toString();
	}
	
	
	public JSONObject readJsonFromUrl(String url) throws IOException, JSONException{
		InputStream iStream = new URL(url).openStream();
		try {
			BufferedReader rd = new BufferedReader(new InputStreamReader(iStream, Charset.forName("UTF-8")));
			String jsonText  = readAll(rd);
			JSONObject jsonObject = new JSONObject(jsonText);
			return jsonObject;
		}
		finally{
			iStream.close();
		}
		
	}
}
