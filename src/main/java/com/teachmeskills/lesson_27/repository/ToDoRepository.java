package com.teachmeskills.lesson_27.repository;

import java.util.ArrayList;
import java.util.List;

public class ToDoRepository {
    private final static List<String> todoList = new ArrayList<>();

    static {
        todoList.add("Закончить курсы TeachMeSkills");
        todoList.add("Стать крутым Java Разработчиком");
        todoList.add("Завоевать мир");
        todoList.add("Попить пивка с друзьями :)");
    }

    public static List<String> getTodoList(){
        return todoList;
    }

    public static void newTask(String descriptionNewTask){
        todoList.add(descriptionNewTask);
    }

    public static void deleteTask(int id){
        todoList.remove(id);
    }

}
