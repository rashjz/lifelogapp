package rashjz.info.app.springboot.repository;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import rashjz.info.app.springboot.model.Content;
import rashjz.info.app.springboot.model.LazyLoad;

import java.util.List;

@Repository
@Transactional
public class ContentRepository extends AbstractDao<Integer, Content> {

    public LazyLoad findByTitleLike(String title, Pageable pageable) {
        LazyLoad lazyLoad = new LazyLoad();
        try {
            Session session = getSession();
            Criteria crit = session.createCriteria(Content.class);
            if (title != null && !title.isEmpty()) {
                crit.add(Restrictions.like("title", title, MatchMode.ANYWHERE));
            }
            int first = pageable.getPageNumber() * pageable.getPageSize();
            System.out.println(":::::::::::::: " + first);
            crit = crit.setFirstResult(first).setMaxResults(pageable.getPageSize());

            lazyLoad.setPosts(crit.list());
            lazyLoad.setTotalItems(findByTitleLikeCount(title,pageable).intValue());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lazyLoad;
    }


    public Long findByTitleLikeCount(String title, Pageable pageable) {
        try {
            Session session = getSession();
            Criteria crit = session.createCriteria(Content.class);
            crit.setProjection(Projections.rowCount());
            if (title != null && !title.isEmpty()) {
                crit.add(Restrictions.like("title", title, MatchMode.ANYWHERE));
            }
            Long resultCount = (Long) crit.uniqueResult();
            return resultCount;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void persist(Content entity) {
        super.persist(entity);
    }

    @Override
    public void update(Content entity) {
        super.update(entity);
    }

    @Override
    public void delete(Content entity) {
        super.delete(entity);
    }
}
