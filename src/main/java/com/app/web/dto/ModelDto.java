package com.app.web.dto;

import com.app.web.model.Comment;
import com.app.web.model.Post;
import com.app.web.model.Role;
import com.app.web.model.User;
import org.springframework.stereotype.Component;

@Component
public class ModelDto {

    private User user;
    private Role role;
    private Post post;
    private Comment comment;

    public ModelDto() {
    }
}
