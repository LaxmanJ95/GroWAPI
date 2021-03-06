/*
 * Copyright 2012-2015 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.grocery.queue.email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.annotation.JmsListener;
import org.springframework.stereotype.Component;

import com.grocery.clib.service.email.EmailService;
import com.grocery.model.email.EmailMessage;

@Component
public class EmailQSubscriber {
	
	@Autowired
	private EmailService emailService;
	

	@JmsListener(destination = "email.queue7")
	public void receiveQueue(EmailMessage emailMsg) throws Exception{
		System.out.println("Subscribed queue msg"+emailMsg);
		emailService.sendEmail(emailMsg.getToEmail(), emailMsg.getSubject(), emailMsg.getEmailBody());
		
	}

}
