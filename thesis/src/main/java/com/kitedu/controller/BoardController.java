package com.kitedu.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kitedu.model.BoardVO;
import com.kitedu.model.Criteria;
import com.kitedu.model.PageMakerDTO;
import com.kitedu.model.ResultVO;
import com.kitedu.service.BoardService;

@Controller
@RequestMapping("/board/*")

public class BoardController {
	private static final Logger log = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	private BoardService bservice;

	/*
	 * @GetMapping("/list") // => @RequestMapping(value="list",
	 * method=RequestMethod.GET) public void boardListGET(Model model) {
	 * 
	 * log.info("게시판 목록 페이지 진입"); model.addAttribute("list", bservice.getList());
	 * 
	 * }
	 */

	/* 게시판 목록 페이지 접속(페이징 적용) */
	@GetMapping("/list")
	public void boardListGET(Model model, Criteria cri) {

		log.info("boardListGET");

		log.info("cri : " + cri);

		model.addAttribute("list", bservice.getListPaging(cri));

		int total = bservice.getTotal(cri);

		PageMakerDTO pageMake = new PageMakerDTO(cri, total);

		model.addAttribute("pageMaker", pageMake);
	}

	@GetMapping("/enroll")
	// => @RequestMapping(value="enroll", method=RequestMethod.GET)
	public void boardEnrollGET() {

		log.info("게시판 등록 페이지 진입");

	}
	
	/* 게시판 등록 */
	@PostMapping("/submit")
	public String submit(ResultVO rs, RedirectAttributes rttr) {

		log.info("ResultVO : " + rs);

		bservice.submit(rs);
		rttr.addFlashAttribute("result", "submit success");
		return "redirect:/";
	}

	
	
	/* 게시판 등록 */
	@PostMapping("/enroll")
	public String boardEnrollPOST(BoardVO board, RedirectAttributes rttr) {

		log.info("BoardVO : " + board);

		bservice.enroll(board);
		rttr.addFlashAttribute("result", "enrol success");
		return "redirect:/board/list";
	}

	/* 게시판 조회 */
	@GetMapping("/get")
	public void boardGetPageGET(int bno, Model model, Criteria cri) {
		model.addAttribute("pageInfo", bservice.getPage(bno));
		model.addAttribute("cri", cri);
	}

	/* 수정 페이지 이동 */
	@GetMapping("/modify")
	public void boardModifyGET(int bno, Model model, Criteria cri) {

		model.addAttribute("pageInfo", bservice.getPage(bno));

		model.addAttribute("cri", cri);

	}

	/* 페이지 수정 */
	@PostMapping("/modify")
	public String boardModifyPOST(BoardVO board, RedirectAttributes rttr) {

		boolean result = bservice.modifyCheck(board);
		if (result) {
			bservice.modify(board);

			rttr.addFlashAttribute("result", "modify success");

			return "redirect:/board/list";

		} else {
			rttr.addFlashAttribute("result", "passwd wrong");
			return "redirect:/board/list";
		}

	}
	
	/* 페이지 삭제 */
    @PostMapping("/delete")
    public String boardDeletePOST(BoardVO board, RedirectAttributes rttr) {
        
    	boolean result = bservice.modifyCheck(board);
		if (result) {
			bservice.delete(board);

			rttr.addFlashAttribute("result", "delete success");

			return "redirect:/board/list";

		} else {
			rttr.addFlashAttribute("result", "passwd wrong");
			return "redirect:/board/list";
		}

    }
 
    @RequestMapping(value = "/mailsend", method = {RequestMethod.GET, RequestMethod.POST})
	public String mailsend(Locale locale, Model model) throws Exception{

		log.info("mailsend");
		
	//	List<MemberVO> memberList = service.selectMember();
		
//		model.addAttribute("memberList", memberList);

	/*	return "/Moderna/index";*/
		return "/board/mailsend";
	}
	
    

	/*
	 * 페이지 삭제
	 * 
	 * @PostMapping("/delete") public String boardDeletePOST(int bno,
	 * RedirectAttributes rttr) {
	 * 
	 * bservice.delete(bno);
	 * 
	 * rttr.addFlashAttribute("result", "delete success");
	 * 
	 * return "redirect:/board/list"; }
	 */

}
