package me.lbenavides.htmxdemo.todo.repository;

import me.lbenavides.htmxdemo.todo.entity.Todo;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface TodoRepository extends CrudRepository<Todo,Long> {
    List<Todo> findAllByTitleContainingIgnoreCase(String title);
}
