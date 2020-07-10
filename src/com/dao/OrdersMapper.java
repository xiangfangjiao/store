package com.dao;

import java.util.List;

import com.pojo.Orders;

public interface OrdersMapper {
	List<Orders> findorders();
	
	int updateisPayByOid(Integer oid);
	
	List<Orders> findOrderByispay();
	
	int updateOverByOid(Integer oid);
	
	List<Orders> findShipmentOrover();
}
