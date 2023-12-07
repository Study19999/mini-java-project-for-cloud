package com.example.demo;

import java.util.ArrayList;
import java.util.List;

@org.springframework.stereotype.Service
public class Service {
    private final Repository repository;

    public Service(Repository repository) {
        this.repository = repository;
        initializeProducts();
    }

    private void initializeProducts() {
        List<Product> initialProducts = new ArrayList<>();

        initialProducts.add(new Product("Product 1", 19.99, 10));
        initialProducts.add(new Product("Product 2", 55.29, 100));
        initialProducts.add(new Product("Product 3", 1000.00, 50));

        repository.saveAll(initialProducts);
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
