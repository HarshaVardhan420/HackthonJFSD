package com.klu.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EmailController {

    @Autowired
    private JavaMailSender mailSender;

    @PostMapping("/sendEmailHandler")
    public String sendEmail(
            @RequestParam("fromEmail") String fromEmail,
            @RequestParam("toEmail") String toEmail,
            @RequestParam("subject") String subject,
            @RequestParam("message") String messageContent) {

        try {
            SimpleMailMessage message = new SimpleMailMessage();
            message.setFrom(fromEmail);
            message.setTo(toEmail);
            message.setSubject(subject);
            message.setText(messageContent);

            mailSender.send(message);
            return "success"; // A JSP page for success
        } catch (Exception e) {
            e.printStackTrace();
            return "error"; // A JSP page for error
        }
    }
}
 	