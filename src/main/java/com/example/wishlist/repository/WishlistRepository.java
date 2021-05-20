package com.example.wishlist.repository;

import com.example.wishlist.entity.Client;
import com.example.wishlist.entity.Wishlist;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface WishlistRepository extends JpaRepository<Wishlist, Long> {

    Wishlist save(Wishlist wishList);

    Wishlist findByID(long id);

    Wishlist findByclient(Client client);

}
