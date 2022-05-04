package net.hyosun.school.persistance;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import net.hyosun.school.model.StudentVO;

public interface StudentDao {
	@Select(" SELECT * FROM tbl_student ")
	public List<StudentVO>selectAll();

}
