package rashjz.info.app.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import rashjz.info.app.springboot.model.Content;
import rashjz.info.app.springboot.model.User;

@Repository("userRepository")
@Transactional
public class UserRepository extends AbstractDao<Integer, User> {
//	 User findByEmail(String email){
//
//	 }
//
//	User findByName(String name){
//
//	}


}
