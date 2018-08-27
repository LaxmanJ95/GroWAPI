package com.grocery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.grocery.clib.util.JSONUtil;
import com.grocery.dao.CartQuery;
import com.grocery.dao.OrderQuery;
import com.grocery.dao.ProductQuery;
import com.grocery.dao.ProductRepository;
import com.grocery.model.dbentity.Product;
import com.grocery.model.product.ProductCategories;
import com.grocery.model.product.SearchProductRequest;

@Service
@Transactional
public class ProductService {
	@Autowired
	private  ProductRepository productRepository;
	@Autowired
	private  ProductQuery productQuery;	
	@Autowired
	private  CartQuery cartQuery;
	@Autowired
	private  OrderQuery orderQuery;
	public ProductService( ) {
			//this.userRepository = userRepository;
	}

	public List<Product> searchProduct(SearchProductRequest request){
		return this.productQuery.findProducts(request.getRoleId(),request.getSearchKey());
	}
	public Product getProduct(long id){
		return this.productRepository.findOne(id);
	}
	public Product saveProduct(Product product){
		System.out.println("Product : "+JSONUtil.toJson(product));
		Product product1 = productRepository.save(product);
		cartQuery.updateCartWithNewProductPrice(product1);
		orderQuery.updateOrderDetailsWithNewProductPrice(product1);
		return product1;
	}
	public Product getProductById(long id){
		return this.productRepository.findById(id);
	}
	public List<Product> productPagination(int from,int to){
		return this.productQuery.productPagination(from, to);
	}
	public long getCount(){
		return this.productRepository.count();
	}
	public List<ProductCategories> getCategories(){
		return this.productQuery.getCategories();
	}
	public List<ProductCategories> getSubCategories(){
		return this.productQuery.getSubCategories();
	}
	public List<Product> searchByCategory(String category){
		return this.productRepository.findAllByProductClass(category);
	}
	public List<Product> searchBySubCategory(String subCategory){
		return this.productRepository.findAllBySubClass(subCategory);
	}
}



