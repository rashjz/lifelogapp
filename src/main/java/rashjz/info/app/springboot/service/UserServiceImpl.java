package rashjz.info.app.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import rashjz.info.app.springboot.model.Role;
import rashjz.info.app.springboot.model.User;
import rashjz.info.app.springboot.repository.RoleRepository;
import rashjz.info.app.springboot.repository.UserRepository;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void saveUser(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setActive(1);
        userRepository.persist(user);
    }


    public User findById(Integer id) {
        return userRepository.getByKey(id);
    }


    public void updateUser(User user) {
        saveUser(user);
    }


    public List<User> findAllUsers() {
        return userRepository.getAll(User.class);
    }

}
