package com.rostyslav.repository;

import com.rostyslav.entity.contact.Contact;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ContactsRepository extends JpaRepository<Contact, Long>, PagingAndSortingRepository<Contact, Long> {

}
