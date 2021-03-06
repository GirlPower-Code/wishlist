package com.example.wishlist.Services;

import com.example.wishlist.entity.Product;
import com.example.wishlist.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    //metodo que cadastra um produto no banco
    public Product registerProduct(Product product) {
        return productRepository.save(product);
    }

    //metodo que retorna todos os produtos do banco
    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }

    public Optional<Product> findProductById(long id){
        return productRepository.findByID(id);
    }

    //metodo que retorna um produto específico do banco (busca por nome)
    public Optional<Product> searchProductByName(String name) {
        return productRepository.findByName(name);
    }
}
