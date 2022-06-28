package com.callor.memo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.callor.memo.model.MemoVO;
import com.callor.memo.persistance.MemoDao;
import com.callor.memo.service.MemoService;

import lombok.extern.slf4j.Slf4j;

@Service
public class MemoServiceImpl implements MemoService {

	@Autowired
	private MemoDao memoDao;

	@Autowired
	public void create_table() {

		try {
			memoDao.create_memo_table();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public List<MemoVO> selectAll() {
		List<MemoVO> memo = memoDao.selectAll();
		return memo;
	}

	@Override
	public MemoVO findById(String id) {
		MemoVO memoVO = memoDao.findById(id);
		return memoVO;
	}

	@Override
	public int insert(MemoVO vo) {
		int count = memoDao.insert(vo);
		return count;
	}

	@Override
	public int update(MemoVO vo) {
		memoDao.update(vo);
		return 0;
	}

	@Override
	public int delete(String id) {
		memoDao.delete(id);
		return 0;
	}

	@Override
	public List<MemoVO> findByauthor(String m_date) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemoVO> findBydate(String m_time) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemoVO> findBymemo(String m_memo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemoVO> findByimage(String m_image) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemoVO> findByMemoSeq(long m_seq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String insertMemoAndFile(MemoVO memoVO, MultipartFile file) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void create_memo_table() {
		// TODO Auto-generated method stub

	}

}
