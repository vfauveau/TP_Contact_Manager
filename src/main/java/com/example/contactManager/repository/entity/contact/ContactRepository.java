package com.example.contactManager.repository.entity.contact;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ContactRepository extends CrudRepository<Contact , Long> {

    List<Contact> findContactsByUser_Id (Long id);
}
