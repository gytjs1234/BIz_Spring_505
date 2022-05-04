package com.callor.school.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.callor.school.dbconfig.DBConnection;
import com.callor.school.dbconfig.DBContract;
import com.callor.school.domain.StudentVO;

/*
 * Dao클래스
 * data Access Object
 * DB와 연동하여 SQl을 보내고 데이터를 수신하는 기능 수행한다
 */
@Component
public class StudentDao {

	private final Connection dbConn;

	public StudentDao() {
		dbConn = DBConnection.getDBCConnection();
	}
	public List<StudentVO> selectAll(){
		/*
		 * JDBC통하여 DBMS에게 Query를 보내고 데이터를 수신하는 객체
		 */
		PreparedStatement pStr=null;
		String sql=DBContract.ST.SELECT;
		
		//	sql문을 전달할준비 디비로 보낼테니 좀 도와주라는의미
		try {
			pStr =dbConn.prepareStatement(sql);
			ResultSet rSet= pStr.executeQuery();
			
			List<StudentVO> stList =new ArrayList<>();
			
			
			//가져올 데이터가 있냐?
			//있으면 읽어올수 있도록 준비해달라
		while(rSet.next()) {
			//한 사람의 데이타
			StudentVO stVO=new StudentVO();
			stVO.setStNum(rSet.getString(DBContract.ST_COL.ST_NUM));
			stVO.setStName(rSet.getString(DBContract.ST_COL.ST_NAME));
			stVO.setStAddr(rSet.getString(DBContract.ST_COL.ST_ADDR));
			stVO.setStDept(rSet.getString(DBContract.ST_COL.ST_DEPT));
			stVO.setStTel(rSet.getString(DBContract.ST_COL.ST_TEL));
			stVO.setIntGrade(rSet.getInt(DBContract.ST_COL.ST_GRADE));
			stList.add(stVO);
	
		}
		rSet.close();
		pStr.close();
		
		return stList;
		
		//select명령문을 실행하는 절차
		
			
				} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}//end selectAll
	
	public StudentVO findByNum(String stNum) {
		PreparedStatement pStr =null;
		String sql=DBContract.ST.SELECT;
		sql += " WHERE st_num = ? ";
		
		try {
			pStr =dbConn.prepareStatement(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			pStr.setString(1, stNum);
			ResultSet rSet =pStr.executeQuery();
			rSet.next();
			StudentVO stVO =new StudentVO();
			stVO.setStNum(rSet.getString(DBContract.ST_COL.ST_NUM));
			stVO.setStName(rSet.getString(DBContract.ST_COL.ST_NAME));
			stVO.setStDept(rSet.getString(DBContract.ST_COL.ST_DEPT));
			stVO.setStAddr(rSet.getString(DBContract.ST_COL.ST_ADDR));
			stVO.setStTel(rSet.getString(DBContract.ST_COL.ST_TEL));
			stVO.setIntGrade(rSet.getInt(DBContract.ST_COL.ST_GRADE));
			
			rSet.close();
			pStr.close();
			return stVO;
					
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	

}
