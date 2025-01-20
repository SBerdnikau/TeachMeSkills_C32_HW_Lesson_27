package com.teachmeskills.lesson_27.repository;

import java.util.ArrayList;
import java.util.List;

public class ToDoRepository {
    private final static List<String> todoList = new ArrayList<>();

    static {
        todoList.add( "Закончить курсы TeachMeSkills");
        todoList.add( "Стать крутым Java разработчиком");
        todoList.add( "Захватить мир...");
        todoList.add( "Попить пивка :)");
    }

    public static List<String> getTodoList(){
        return todoList;
    }
}
