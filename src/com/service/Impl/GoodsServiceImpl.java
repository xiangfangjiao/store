package com.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.GoodsMapper;
import com.dao.OrdersMapper;
import com.pojo.Category;
import com.pojo.Goods;
import com.pojo.Orders;
import com.service.GoodsService;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService{
	@Resource
	private GoodsMapper goodsMapper;
	@Resource
	private OrdersMapper ordersMapper;
	//查找所有商品信息
		@Override
		public List<Goods> findAllGoods(){
			return goodsMapper.findAllGoods();
		}
		
		//添加商品
		@Override
		public int AddGoods(Goods goods) {
			return goodsMapper.AddGoods(goods);
		}
		

	//查找所有分类
		@Override
		public List<Category> findAllCategory(){
			return goodsMapper.findAllCategory();
		}
		
	//根据id删除分类
		@Override
		public int deleteCategoryById(Integer categoryId) {
			return goodsMapper.deleteCategoryById(categoryId);
		}
	//根据分类名称查找分类
		public 	Category findCategoryByTitle(String categoryName) {
			return goodsMapper.findCategoryByTitle(categoryName);
		}
		
	//添加分类
		@Override
		public int addCategory(String categoryName) {
			if(findCategoryByTitle(categoryName) != null)
				return 0;
			return goodsMapper.addCategory(categoryName);
		}
		
	
		//查找订单
		@Override
		public List<Orders> findorders(){
			return ordersMapper.findorders();
		}
		
		//根据商品id查找商品信息
		@Override
		public List<Goods> findGoodsById(Integer proId) {
			return goodsMapper.findGoodsById(proId);
		}
		
		//根据id删除商品
		@Override
		public int deleteGoodsById(Integer proId) {
			return goodsMapper.deleteGoodsById(proId);
		}
		//根据id修改商品信息
		@Override
		public int updateGoodsInformestion(Goods goods) {
			return goodsMapper.updateGoodsInformestion(goods);
		}
		
		
		
		
		//查找未出货订单
		@Override
		public List<Orders> findOrderByispay(){
			return ordersMapper.findOrderByispay();
		}
		//修改订单状态为1
		@Override
		public 
		int updateisPayByOid(Integer oid) {
			return ordersMapper.updateisPayByOid(oid);
		}
		//查找出货中的商品或已完成的 1
		@Override
		public 	List<Orders> findShipmentOrover(){
			return ordersMapper.findShipmentOrover();
		}
		//修改出货中为已收货
		@Override
		public int updateOverByOid(Integer oid) {
			return ordersMapper.updateOverByOid(oid);
		}
		
}
