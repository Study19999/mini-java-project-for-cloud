package com.example.demo;

import java.util.List;

@org.springframework.stereotype.Service
public class Service {
    private final Repository repository;

    public Service(Repository repository) {
        this.repository = repository;
    }

    public Product createProduct(Product product){
      product.setTitle(product.getTitle());
      product.setStock(product.getStock());
      product.setPrice(product.getPrice());

      repository.save(product);

      return product;
  }

  public List<Product> findAll(){
        return repository.findAll();
  }
}
