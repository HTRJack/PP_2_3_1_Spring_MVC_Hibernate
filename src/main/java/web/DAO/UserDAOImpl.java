package web.DAO;

import org.springframework.stereotype.Repository;
import web.model.User;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class UserDAOImpl implements UserDAO {

    @PersistenceContext
    private EntityManager entityManager;


    @Override
    public List<User> getAllUsers() {
        return entityManager.createQuery("from User").getResultList();
    }

    @Override
    public void addUser(User user) {
        entityManager.persist(user);
    }

    @Override
    public User getById(long id) {
        return entityManager.find(User.class, id);
    }

    @Override
    public void delete(User user) {
        if (entityManager.contains(user)) {
            entityManager.remove(user);
        } else {

            entityManager.remove(entityManager.merge(user));
        }
    }

    @Override
    public void edit(User user) {
        entityManager.merge(user);
    }


}
