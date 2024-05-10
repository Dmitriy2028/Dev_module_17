package com.example.Dev_module_17.service;

import com.example.Dev_module_17.data.entity.Note;

import java.util.List;

public interface NoteService {

    List<Note> listAll();

    Note add(Note note);

    void deleteById(long id);

    void update(Note note);

    Note getById(long id);
}
