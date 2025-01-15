package me.lbenavides.htmxdemo.todo;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

interface TodoRepository extends CrudRepository<Todo,Long> {
    List<Todo> findAllByTitleContainingIgnoreCase(String title);
}
