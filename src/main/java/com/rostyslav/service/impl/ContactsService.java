package com.rostyslav.service.impl;

import com.rostyslav.dto.CriteriaQuery;
import com.rostyslav.entity.contact.Contact;
import com.rostyslav.repository.ContactsRepository;
import com.rostyslav.repository.ContactsSearchRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContactsService implements com.rostyslav.service.ContactsService {

    private ContactsRepository repository;
    private ContactsSearchRepository searchRepository;

    @Autowired
    public ContactsService(ContactsRepository repository, ContactsSearchRepository searchRepository) {
        this.repository = repository;
        this.searchRepository = searchRepository;
    }


    @Override
    public Contact addNewContact(Contact contact) {
        return repository.save(contact);
    }

    @Override
    public Contact findOneContact(long id) {
        return repository.findById(id).orElse(new Contact());
    }


    @Override
    public Contact updateContact(Contact newContact) {
        return repository.save(newContact);
    }

    @Override
    public boolean deleteContact(long id) {
        repository.deleteById(id);
        return true;
    }

    @Override
    public List<Contact> retrievePaginatedListOfContacts(int size, int offset) {
        return repository.findAll(PageRequest.of(offset, size)).getContent();
    }

    @Override
    public List<Contact> criteriaSearch(int size, int offset, CriteriaQuery query) {
        return searchRepository.searchContacts(offset, size, query);
    }
}
