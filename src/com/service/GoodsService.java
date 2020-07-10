package com.service;

import java.util.List;

import com.pojo.Category;
import com.pojo.Goods;
import com.pojo.Orders;

public interface GoodsService {
	List<Goods> findAllGoods();
	
	List<Category> findAllCategory();
	
	int deleteCategoryById(Integer categoryId);
	
	int AddGoods(Goods goods);

	Category findCategoryByTitle(String categoryName);
	
	int addCategory(String categoryName);
	
	List<Orders> findorders();
	
	List<Goods> findGoodsById(Integer proId);
	
	int deleteGoodsById(Integer proId);

	int updateisPayByOid(Integer oid);

	List<Orders> findOrderByispay();
	
	int updateOverByOid(Integer oid);
	
	List<Orders> findShipmentOrover();
	
	int updateGoodsInformestion(Goods goods);
}
