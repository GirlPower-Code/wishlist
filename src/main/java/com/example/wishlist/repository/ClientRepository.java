package com.example.wishlist.repository;

import com.example.wishlist.entity.Client;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ClientRepository extends JpaRepository<Client, Long> {

    Client save(Client client);

    Client findByEmail(String email);

    Optional<Client> findByID(long id);

    Optional<Client> findByemail(String email);

}