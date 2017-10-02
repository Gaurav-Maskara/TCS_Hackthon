package com.tcs.hackthon.controller;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.tcs.hackthon.bean.Feedback;
import com.tcs.hackthon.dao.AzureDao;

@Controller
public class WebController {

	@RequestMapping("/")
	public String welcome(Model model) {
		return "welcome";
	}

	@RequestMapping(value = "/addFeedback", method = RequestMethod.POST)
	public String addStudent(HttpServletRequest request, HttpServletResponse response) {
		Feedback feedback = new Feedback(request.getParameter("fname"), request.getParameter("email"),
				request.getParameter("message"));
		AzureDao.insertFeedback(feedback);

		return "redirect:feedbacks";
	}

	@RequestMapping(value = "/feedbacks", method = RequestMethod.GET)
	public String finalPage(Model model) {
		ArrayList<Feedback> feedbacks = AzureDao.getFeedbacks();
		model.addAttribute("feedbacks", feedbacks);
		return "allFeedbacks";
	}

}
