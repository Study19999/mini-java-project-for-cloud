package com.example.demo;

import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("demo")
public class Controller {

    private final Service service;


    public Controller(Service service) {
        this.service = service;
    }

    @PostMapping("/create")
    public Product createProduct(@RequestBody Product product){
      return  this.service.createProduct(product);
    }

    @GetMapping("/")
    public List<Product> findAll(){
        return this.service.findAll();
    }
}
