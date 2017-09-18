package rashjz.info.app.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import rashjz.info.app.springboot.model.Content;
import rashjz.info.app.springboot.model.LazyLoad;
import rashjz.info.app.springboot.repository.ContentRepository;
import rashjz.info.app.springboot.repository.ContentTypeRepository;

import java.util.List;

@Service("contentService")
@Transactional
public class ContentServiceImpl implements ContentService {

    @Autowired
    private ContentRepository contentRepository;

    @Autowired
    private ContentTypeRepository contentTypeRepository;


    @Override
    public void saveContent(Content content) {
        contentRepository.persist(content);
    }

    @Override
    public Content findById(Long id) {
        return contentRepository.getByKey(id.intValue());
    }



    @Override
    public void deleteContentById(Long id) {
        contentRepository.delete(null);
    }

    @Transactional(readOnly = true)
    @Override
    public LazyLoad findByTitleLike(String searchTerm, Pageable pageRequest) {
        LazyLoad searchResultPage = contentRepository.findByTitleLike(searchTerm, pageRequest);
        return searchResultPage;
    }

}
