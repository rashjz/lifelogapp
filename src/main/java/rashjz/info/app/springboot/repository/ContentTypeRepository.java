package rashjz.info.app.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.RequestMapping;
import rashjz.info.app.springboot.model.ContentType;

@RepositoryRestResource(path = "/contentTypes")
public interface ContentTypeRepository extends JpaRepository<ContentType, Integer> {

}
