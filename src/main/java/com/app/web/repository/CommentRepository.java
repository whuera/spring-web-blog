package com.app.web.repository;

import com.app.web.model.Comment;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Interface for CommentRepository
 */
public interface CommentRepository extends JpaRepository<Comment, Long> {
}
