package com.kitedu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitedu.mapper.BoardMapper;
import com.kitedu.model.BoardVO;
import com.kitedu.model.Criteria;
import com.kitedu.model.ResultVO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardMapper mapper;
	
	@Override
    public void enroll(BoardVO board) {
        
        mapper.enroll(board);
        
    }
	
	@Override
    public void submit(ResultVO rs) {
        
        mapper.submit(rs);
        
    }
	
	@Override
	public List<BoardVO> getList() {

		return mapper.getList();
	}
	
	 /* 게시판 조회 */
    @Override
    public BoardVO getPage(int bno) {
         
        return mapper.getPage(bno);
    }   

    /* 게시판 수정 */
    @Override
    public int modify(BoardVO board) {
        
        return mapper.modify(board);
    }
    
    /* 게시판 수정체크,패스워드체크  */
    @Override
    public boolean modifyCheck(BoardVO board) {
    	boolean result =false;
    	int count = mapper.modifyCheck(board);
        if(count ==1) result = true;
        return result;
    }
    
    /* 게시판 삭제 */
    @Override
    public int delete(BoardVO board) {
    	
        
        return mapper.delete(board);
    }
    
    /* 게시판 목록(페이징 적용) */
    @Override
    public List<BoardVO> getListPaging(Criteria cri) {
        
        return mapper.getListPaging(cri);
    }    
    
    /* 게시물 총 갯수 */
    @Override
    public int getTotal(Criteria cri) {
        
        return mapper.getTotal(cri);
    }    
}
