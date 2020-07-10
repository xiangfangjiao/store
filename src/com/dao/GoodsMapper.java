package com.dao;

import java.util.List;
import com.pojo.Category;
import com.pojo.Goods;

public interface GoodsMapper {
	List<Goods> findAllGoods();
	
	List<Category> findAllCategory();
	
	int AddGoods(Goods goods);
	
	int deleteCategoryById(Integer categoryId);
	
	Category findCategoryByTitle(String categoryName);
	
	int addCategory(String categoryName);
	
	List<Goods> findGoodsById(Integer proId);
	
	int deleteGoodsById(Integer proId);
	
	int updateGoodsInformestion(Goods goods);

	Goods findAllOrder();
	
	List<Goods> getItemByXxx();
}
