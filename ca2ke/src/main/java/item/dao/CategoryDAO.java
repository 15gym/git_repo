package item.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import item.bean.CategoryDTO;

@Repository
public class CategoryDAO {
	@Autowired
	private SqlSessionTemplate session;
	
	public int addCategory(CategoryDTO dto) {
		return session.insert("mybatis.cateMapper.addCategory", dto);
	}
	
	public int updateCategory(CategoryDTO dto) {
		return session.update("mybatis.cateMapper.updateCategory", dto);
	}
}
