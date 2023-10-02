package com.kitedu.controller;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MailAuth extends Authenticator{
	PasswordAuthentication pa;
    
    public MailAuth() {
        String mail_id = "chunxpd@gmail.com";
        String mail_pw = "ampltdbnsnhrqkwj";
 
        pa = new PasswordAuthentication(mail_id, mail_pw);
    }
    
    public PasswordAuthentication getPasswordAuthentication() {
        return pa;
    }

}
