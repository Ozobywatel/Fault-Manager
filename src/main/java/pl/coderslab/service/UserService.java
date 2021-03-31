package pl.coderslab.service;

import pl.coderslab.model.User;

import java.util.List;
import java.util.Optional;

public interface UserService {

    List<User> getUsers();

    void add(User user);

    Optional<User> get(Long id);

    void delete(Long id);

    void update(User user);

    User findByUserName(String name);

}
