package com.rostyslav.controller;

import com.rostyslav.dto.ContactResponce;
import com.rostyslav.dto.CriteriaQuery;
import com.rostyslav.entity.contact.Contact;
import com.rostyslav.service.ContactsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/contacts")
public class ContactsController {
    private ContactsService service;

    @Autowired
    public ContactsController(ContactsService service) {
        this.service = service;
    }

    @PostMapping
    public ResponseEntity<ContactResponce> saveNewContact(@RequestBody Contact contact) {

        long id = service.addNewContact(contact).getId();
        return id > 0 ? ResponseEntity.ok(new ContactResponce("success", id)) :
                ResponseEntity.badRequest().build();

    }

    @PutMapping("/{id}")
    public ResponseEntity<ContactResponce> updateContact(@PathVariable Long id, @RequestBody Contact contact) {
        contact.setId(id);
        return service.updateContact(contact) != null ? ResponseEntity.ok(new ContactResponce("success", id)) :
                ResponseEntity.badRequest().build();

    }

    @DeleteMapping("/{id}")
    public ResponseEntity<ContactResponce> deleteContact(@PathVariable Long id) {
        return service.deleteContact(id) ? ResponseEntity.ok(new ContactResponce("success")) :
                ResponseEntity.badRequest().build();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Contact> findContact(@PathVariable Long id) {
        return ResponseEntity.ok(service.findOneContact(id));
    }

    @GetMapping
    public ResponseEntity<List<Contact>> getContactsPaginatedList(@RequestParam(required = false) Integer size,
                                                                  @RequestParam(required = false) Integer offset) {
        return ResponseEntity.ok(service.retrievePaginatedListOfContacts(size, offset));

    }

    @PostMapping("/search")
    public ResponseEntity<List<Contact>> getContactsPaginatedListByCriteria(@RequestParam(required = false) int size,
                                                                            @RequestParam(required = false) int offset,
                                                                            @RequestBody CriteriaQuery query) {
        return ResponseEntity.ok(service.criteriaSearch(size, offset, query));
    }

}
