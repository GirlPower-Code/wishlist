package com.example.wishlist.Services;

import com.example.wishlist.entity.Client;
import com.example.wishlist.repository.ClientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class ClientService {

    @Autowired
    private ClientRepository clientRepository;

    // Registar um novo cliente
    public Client registerClient(Client client){
        return clientRepository.save(client);
    }

    //Procurar cliente
    public Client registeredClient(String email) {
        return clientRepository.findByEmail(email);
    }

    public Optional<Client> getClientById(long id) {
        return clientRepository.findByID(id);
    }
}
