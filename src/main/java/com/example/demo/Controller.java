package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("demo")
public class Controller {

    private final Service service;


    public Controller(Service service) {
        this.service = service;
    }

    @GetMapping("/create")
    public Product createProduct(@RequestBody Product product){
      return  this.service.createProduct(product);
    }
}
