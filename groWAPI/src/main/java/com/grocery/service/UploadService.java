package com.grocery.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.grocery.dao.PrescriptionUploadsRepository;

@Service
@Transactional
public class UploadService {

	@Autowired
	private  PrescriptionUploadsRepository prescriptionUploadsRepository;
	
	
}
