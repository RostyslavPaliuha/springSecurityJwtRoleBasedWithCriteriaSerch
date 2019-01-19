package com.rostyslav.service;

import com.rostyslav.dto.CriteriaQuery;
import com.rostyslav.entity.contact.Contact;
import org.springframework.security.access.prepost.PreAuthorize;

import java.util.List;

public interface ContactsService {
    @PreAuthorize("hasAnyRole('USER','ADMIN')")
    Contact addNewContact(Contact contact);

    Contact findOneContact(long id);

    @PreAuthorize("hasRole('ADMIN')")
    Contact updateContact(Contact newContact);

    @PreAuthorize("hasRole('ADMIN')")
    boolean deleteContact(long id);

    List<Contact> retrievePaginatedListOfContacts(int size, int offset);

    List<Contact> criteriaSearch(int size, int offset, CriteriaQuery query);


}
