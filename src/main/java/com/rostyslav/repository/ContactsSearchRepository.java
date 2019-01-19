package com.rostyslav.repository;

import com.rostyslav.dto.CriteriaQuery;
import com.rostyslav.entity.contact.Contact;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Conjunction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class ContactsSearchRepository {

    @PersistenceContext
    private EntityManager entityManager;

    public List<Contact> searchContacts(int page, int size, CriteriaQuery criteriaQuery) {
        String orderBy = criteriaQuery.getOrderBy();
        Criterion firstName = null;
        Criterion lastName = null;
        Criterion city = null;

        Session s = entityManager.unwrap(Session.class);
        Criteria c = s.createCriteria(Contact.class);

        if (page != 0 & size != 0) {
            c.setFirstResult(page * size);
            c.setMaxResults(page * size + size);
        } else {
            c.setFirstResult(0);
            c.setMaxResults(10);
        }

        Conjunction and = Restrictions.and();
        if (orderBy != null )
            c.addOrder(Order.asc(orderBy));

        if (criteriaQuery.getFirstName() != null) {
            firstName = Restrictions.eq("firstName", criteriaQuery.getFirstName()).ignoreCase();
            and.add(firstName);
        }
        if (criteriaQuery.getLastName() != null) {
            lastName = Restrictions.eq("lastName", criteriaQuery.getLastName()).ignoreCase();
            and.add(lastName);
        }
        if (criteriaQuery.getCity() != null) {
            city = Restrictions.eq("address.city", criteriaQuery.getCity()).ignoreCase();
            and.add(city);
        }
        return c.add(and).list();


    }

}

