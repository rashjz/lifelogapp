package rashjz.info.app.springboot.repository;

import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import rashjz.info.app.springboot.model.Role;

import java.util.List;

@Service("roleRepository")
@Transactional
public class RoleRepository extends AbstractDao<Integer, Role> {
	@Override
	public void persist(Role entity) {
		super.persist(entity);
	}

	@Override
	public Role getByKey(Integer key) {
		return super.getByKey(key);
	}

	@Override
	public void update(Role entity) {
		super.update(entity);
	}

	@Override
	public void delete(Role entity) {
		super.delete(entity);
	}

	@Override
	protected Criteria createEntityCriteria() {
		return super.createEntityCriteria();
	}

	@Override
	public <T> List<T> getAll(Class<T> type) {
		return super.getAll(type);
	}
}
