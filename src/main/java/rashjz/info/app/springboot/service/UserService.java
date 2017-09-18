package rashjz.info.app.springboot.service;

import rashjz.info.app.springboot.model.User;

import java.util.List;

public interface UserService {

    public void saveUser(User user);

    User findById(Integer id);

    void updateUser(User user);

    List<User> findAllUsers();

}
