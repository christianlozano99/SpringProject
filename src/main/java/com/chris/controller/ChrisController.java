package com.chris.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ChrisController {
    @GetMapping("/")
    public String display() {
        return "<h1 style=color:blue><marquee behavior=alternate>Welcome to the world of SpringBoot</marquee></h1>";
    }

}