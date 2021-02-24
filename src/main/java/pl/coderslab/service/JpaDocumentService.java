package pl.coderslab.service;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import pl.coderslab.model.Document;
import pl.coderslab.repository.DocumentRepository;

import java.util.List;
import java.util.Optional;

@Primary
@Repository
public class JpaDocumentService implements DocumentService {

    private final DocumentRepository documentRepository;

    public JpaDocumentService(DocumentRepository documentRepository) {
        this.documentRepository = documentRepository;
    }

    @Override
    public List<Document> getDocuments() {
        return documentRepository.findAll();
    }

    @Override
    public void add(Document document) {
        documentRepository.save(document);
    }

    @Override
    public Optional<Document> get(Long id) {
        return documentRepository.findById(id);
    }

    @Override
    public void delete(Long id) {
        documentRepository.deleteById(id);
    }

    @Override
    public void update(Document document) {
        documentRepository.save(document);
    }

}
