package com.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.mysql.jdbc.StringUtils;
import com.pojo.Category;
import com.pojo.Goods;
import com.pojo.Orders;
import com.service.GoodsService;

@Controller
public class ManageServer{

	@Resource
	private GoodsService goodsService;
	
	
	@RequestMapping(value="/allgoods",method=RequestMethod.GET)
	//访问goods页面
	public String allgoods(Model model) {
		List<Goods> goods = goodsService.findAllGoods();
		model.addAttribute("goods", goods);
		return "allgoods";
	}

	//跳转到添加商品页面
	@RequestMapping(value="/addgoods",method=RequestMethod.GET)
	public String addgoods(@ModelAttribute Goods goods,Model model) {
		List<Category> category = goodsService.findAllCategory();
		model.addAttribute("category", category);
		return "addgoods";
	}

	//商品上传文件
	@RequestMapping(value="/addgoods",method=RequestMethod.POST)
	public String upload(Goods goods) {
		if(StringUtils.isNullOrEmpty(goods.getProName())|| StringUtils.isNullOrEmpty(goods.getBrand()) || 
				StringUtils.isNullOrEmpty(goods.getCountry())|| goods.getCategory().getCategoryId() == null 
				|| StringUtils.isNullOrEmpty(goods.getMessage()) || goods.getNumbers() == null	|| goods.getPrice() == null ) {
			
			//把数据添加到数据库
			goodsService.AddGoods(goods);
		}
		return "redirect:/addgoods";
	}
	
	
	//商品分类
	@RequestMapping(value="/category",method=RequestMethod.GET)
	public String category(Model model) {
		List<Category> category = goodsService.findAllCategory();
		model.addAttribute("category", category);
		return "category";
	}
	//删除分类
	@RequestMapping(value="/delcategory/{categoryId}",method=RequestMethod.GET)
	public String delCategory(@PathVariable Integer categoryId) {
		goodsService.deleteCategoryById(categoryId);
		return "redirect:/category";
	}
	
	//添加分类
	@RequestMapping(value="/category",method=RequestMethod.POST)
	public String addcategory(Category category,BindingResult bindingResult,
			Model model) {
		goodsService.addCategory(category.getCategoryName());
		model.addAttribute("category", category);
		return "redirect:/category";
	}
	
	//异步验证分类名是否存在或为空
	@RequestMapping(value="category_existornull",method=RequestMethod.POST)
	@ResponseBody
	public Object categoryExitsornull(String categoryName) {
		Category result = goodsService.findCategoryByTitle(categoryName);
		HashMap<String, String> map = new HashMap<String,String>();
		if(result == null)
			map.put("status", "noexists");
		else
			map.put("status", "exists");
		if(categoryName == null)
			map.put("status", "null");
		return JSON.toJSONString(map);
	}
	
	//订单页面
	@RequestMapping(value="/order",method=RequestMethod.GET)
	public String order(Model model) {
		List<Orders> order = goodsService.findorders();
		model.addAttribute("order", order);
		return "order";
	}
	//未发货订单页面
	@RequestMapping(value="/order_pay",method=RequestMethod.GET)
	public String order_pay(Model model) {
		List<Orders> orders = goodsService.findOrderByispay(); 
		model.addAttribute("orders", orders);
		return "order_pay";
	}
	//已付款订单中显示出货中 修改为1
	@RequestMapping(value="/order_pay_shield/{oid}",method=RequestMethod.GET)
	public String shield(@PathVariable Integer oid) {
		goodsService.updateisPayByOid(oid);
		return "redirect:/order_pay";
	}
	//显示已完成 2
	@RequestMapping(value="/order_over",method=RequestMethod.GET)
	public String over(Model model) {
		List<Orders> orders = goodsService.findShipmentOrover();
		model.addAttribute("orders", orders);
		return "order_over";
	}
	//修改出货中为已收货
	@RequestMapping(value="/order_over_shield/{oid}",method=RequestMethod.GET)
	public String over(@PathVariable Integer oid) {
		goodsService.updateOverByOid(oid);
		return "redirect:/order_over";
	}
	
	//根据商品id显示商品信息
	@RequestMapping(value="/updategoods/{proId}",method=RequestMethod.GET)
	public String editor(Integer proId,Model model) {
		List<Goods> goodsmsg = goodsService.findGoodsById(proId);
		List<Category> category = goodsService.findAllCategory();
		model.addAttribute("goodsmsg", goodsmsg);
		model.addAttribute("category", category);
		return "updategoods";
	}

	//根据id删除商品
	@RequestMapping(value="/delete/{proId}",method=RequestMethod.GET)
	public String delgoods(@PathVariable Integer proId) {
		goodsService.deleteGoodsById(proId);
		return "redirect:/allgoods";
	}
	//根据id修改商品信息
	@RequestMapping(value="/goodsMessage/{proId}",method=RequestMethod.POST)
	public String editor(Goods goods) {
		if(StringUtils.isNullOrEmpty(goods.getProName())|| StringUtils.isNullOrEmpty(goods.getBrand()) || 
				StringUtils.isNullOrEmpty(goods.getCountry())|| goods.getCategory().getCategoryId() == null 
				|| StringUtils.isNullOrEmpty(goods.getMessage()) || goods.getNumbers() == null	|| goods.getPrice() == null ) {
			
			//把数据添加到数据库
		goodsService.updateGoodsInformestion(goods);
		}
		return "redirect:/allgoods";
	}
	
	
}
