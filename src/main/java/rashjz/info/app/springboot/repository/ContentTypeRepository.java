package rashjz.info.app.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import rashjz.info.app.springboot.model.ContentType;

import java.util.List;

@Repository
public interface ContentTypeRepository extends JpaRepository<ContentType, Integer> {


}
