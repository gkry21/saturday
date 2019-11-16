package com.pro.notice.sample.Controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pro.notice.common.CommandMap;
import com.pro.notice.sample.service.SampleService;

@Controller
public class SampleController {
	Logger log = Logger.getLogger(this.getClass());
	@Resource(name = "sampleService")
	private SampleService sampleService;

	@RequestMapping(value = "/sample/openBoardList.do")
	public ModelAndView openSampleBoardList(Map<String, Object> commandMap)
			throws Exception {
		ModelAndView mv = new ModelAndView("/sample/boardList");
		List<Map<String, Object>> list = sampleService
				.selectBoardList(commandMap);
		mv.addObject("list", list);

		return mv;
	}

	@RequestMapping(value = "/sample/openBoardWrite.do")
	public ModelAndView openBoardWrite(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/sample/boardWrite");
		return mv;
	}

	@RequestMapping(value = "/sample/insertBoard.do" , method = RequestMethod.POST)
	public ModelAndView insertBoard(CommandMap commandMap) throws Exception {
		System.out.println("commandMap : " + commandMap.getMap());
		ModelAndView mv = new ModelAndView("redirect:/sample/openBoardList.do");
		sampleService.insertBoard(commandMap.getMap());
		return mv;
	}

}
