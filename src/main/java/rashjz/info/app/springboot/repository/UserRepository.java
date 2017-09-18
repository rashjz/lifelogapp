package rashjz.info.app.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import rashjz.info.app.springboot.model.Content;
import rashjz.info.app.springboot.model.User;

import java.util.List;

@Repository("userRepository")
@Transactional
public class UserRepository extends AbstractDao<Integer, User> {

    @Override
    public User getByKey(Integer key) {
        return super.getByKey(key);
    }

    @Override
    public void persist(User entity) {
        super.persist(entity);
    }

    @Override
    public void update(User entity) {
        super.update(entity);
    }

    @Override
    public void delete(User entity) {
        super.delete(entity);
    }

    @Override
    public <T> List<T> getAll(Class<T> type) {
        return super.getAll(type);
    }
}
