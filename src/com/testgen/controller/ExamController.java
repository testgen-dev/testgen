package com.testgen.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.testgen.entity.Question;
import com.testgen.service.examService;

@RestController
@RequestMapping("/exam")
@Scope("prototype")
public class ExamController {
	
	@Autowired
	private examService examService;
	public void setExamService(examService examService) {
		this.examService = examService;
	}
	
	private Map<Long, List<Question>> Map = new HashMap<Long, List<Question>>();
	
	@RequestMapping("/start")
	public Object getPaper(@RequestParam (value="position")String position,@RequestParam(value="tech")String tech){
		
		String url = "http://112.74.62.114:8080/Entity/U1ff54ed338bfc/testgen/Question/";
		JSONObject jsonObject = null;
		System.out.println("position:"+position);
		System.out.println("tech:"+tech);
		try {
			jsonObject = examService.readJsonFromUrl(url);
		} catch (IOException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		} catch (JSONException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		JSONArray jsonArray = null;
		try {
			jsonArray = jsonObject.getJSONArray("Question");
		} catch (JSONException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		int level1 = 5;
		int level2 = 5;
		int level3 = 5;
		int level4 = 5;
		List<Question> l1 = new ArrayList<Question>();
		try {
			for(int i=0;i<jsonArray.length();i++){
				JSONObject jsonObject2 = jsonArray.getJSONObject(i);
				String string = jsonObject2.getString("category");
				System.out.println("string:"+string);
				boolean flag = false;
				if(string.contains(position))
				{
					System.out.println("here");
					String[] strings = tech.split(",");
					for(String s : strings){
						if(string.contains(s))
						{
							flag = true;
							System.out.println("s:"+s);
							break;
						}
					}
				}
				if(flag == true){
					switch (jsonObject2.getInt("level")) {
					case 1:
						if(level1>0){
							Question question = new Question(jsonObject2.getLong("id"), jsonObject2.getString("content"), jsonObject2.getString("answer"), jsonObject2.getString("option1"), jsonObject2.getString("option2"), jsonObject2.getString("option3"), jsonObject2.getString("option4"), jsonObject2.getInt("level"));
							l1.add(question);
							level1--;
						}
						break;
					case 2:
						if(level2>0){
							Question question = new Question(jsonObject2.getLong("id"), jsonObject2.getString("content"), jsonObject2.getString("answer"), jsonObject2.getString("option1"), jsonObject2.getString("option2"), jsonObject2.getString("option3"), jsonObject2.getString("option4"), jsonObject2.getInt("level"));
							l1.add(question);
							level2--;
						}
						break;
					case 3:
						if(level3>0){
							Question question = new Question(jsonObject2.getLong("id"), jsonObject2.getString("content"), jsonObject2.getString("answer"), jsonObject2.getString("option1"), jsonObject2.getString("option2"), jsonObject2.getString("option3"), jsonObject2.getString("option4"), jsonObject2.getInt("level"));
							l1.add(question);
							level3--;
						}
						break;
					case 4:
						if(level4>0){
							Question question = new Question(jsonObject2.getLong("id"), jsonObject2.getString("content"), jsonObject2.getString("answer"), jsonObject2.getString("option1"), jsonObject2.getString("option2"), jsonObject2.getString("option3"), jsonObject2.getString("option4"), jsonObject2.getInt("level"));
							l1.add(question);
							level4--;
						}
						break;
					}		
				}
			}
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return l1;	
	}
	
	
	@RequestMapping(value="/marking" , method = RequestMethod.POST)
	@ResponseBody
	public String Marking(@RequestBody String data){
		return data;
	}
}
