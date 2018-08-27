package com.grocery.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.grocery.model.dbentity.PrescriptionUploads;


@Repository
public interface PrescriptionUploadsRepository extends CrudRepository<PrescriptionUploads, Long>{
	Integer deleteByCartId(long cartId);
	Integer deleteByFilePath(String filePath);
	public List<PrescriptionUploads> findAllByCartId(long cartId);
	public List<PrescriptionUploads> findByOrderIdAndCartId(long orderId,long cartId);
	public List<PrescriptionUploads> findByOrderId(long orderId);
	public List<PrescriptionUploads> findByCartId(long cartId);
}



