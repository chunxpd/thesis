package com.kitedu.mapper;

import java.util.List;

import com.kitedu.model.BoardVO;
import com.kitedu.model.Criteria;
import com.kitedu.model.ResultVO;

public interface BoardMapper {
	 /* 작가 등록 */
    public void enroll(BoardVO board);
    
    public void submit(ResultVO rs);
    
    /* 게시판 목록 */
    public List<BoardVO> getList();
    
    /* 게시판 조회 */
    public BoardVO getPage(int bno);
    /* 게시판 수정 */
    public int modify(BoardVO board);
    
    /* 게시판 수정체크 */
    public int modifyCheck(BoardVO board);
    
    /* 게시판 삭제 */
    public int delete(BoardVO board);
    
    /* 게시판 목록(페이징 적용) */
    public List<BoardVO> getListPaging(Criteria cri);
    
    /* 게시판 총 갯수 */
    public int getTotal(Criteria cri);
    
}
