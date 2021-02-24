package pl.coderslab.service;

import pl.coderslab.model.Document;

import java.util.List;
import java.util.Optional;

public interface DocumentService {

    List<Document> getDocuments();

    void add(Document document);

    Optional<Document> get(Long id);

    void delete(Long id);

    void update(Document document);
}
