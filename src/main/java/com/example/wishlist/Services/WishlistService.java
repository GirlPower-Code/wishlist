package com.example.wishlist.Services;

import com.example.wishlist.entity.Client;
import com.example.wishlist.entity.Wishlist;
import com.example.wishlist.repository.WishlistRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WishlistService {

    @Autowired
    private WishlistRepository wishlistRepository;

    //add wishlis no banco de dados
    public Wishlist createWishList(Wishlist wishList){
        return wishlistRepository.save(wishList);
    }

    //mostrar a lista de desejos do cliente
    public Wishlist findByID(long id){
        return wishlistRepository.findByID(id);
    }

    public Wishlist getWishlist(Client client) {
        return wishlistRepository.findByclient(client);
    }

}