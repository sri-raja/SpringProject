package com.example.firstproject;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "Student")
public class Student implements Serializable {
    public static final long serialVersionUID=1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int stud_id;
    @Column(name="stud_name" , nullable=false)
    private String stud_name;

    @Column(nullable = false)
    private int age;

    @Column(nullable = false)
    private int year;

    @Column(nullable = false)
    private int dept_id;

    @Column(nullable = false)
    private int semester;


}