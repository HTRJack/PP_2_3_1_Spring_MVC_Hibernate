package web.service;

import web.model.User;

import java.util.List;

public interface UserService {

    List<User> getAllUsers();

    void addUser(User user);

    void delete(User user);

    void edit(User user);

    User getById(long id);

}
