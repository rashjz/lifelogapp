package rashjz.info.app.springboot.repository;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import rashjz.info.app.springboot.model.ContentType;

import java.util.List;

@Repository
@Transactional
public class ContentTypeRepository extends AbstractDao<Integer, ContentType> {
    @Override
    public Session getSession() {
        return super.getSession();
    }

    @Override
    public ContentType getByKey(Integer key) {
        return super.getByKey(key);
    }

    @Override
    public void persist(ContentType entity) {
        super.persist(entity);
    }

    @Override
    public void update(ContentType entity) {
        super.update(entity);
    }

    @Override
    public void delete(ContentType entity) {
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
