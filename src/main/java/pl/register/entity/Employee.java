package pl.register.entity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "employees")
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @NotNull
    private String firstName;
    @NotNull
    private String lastName;
    @Size(min = 5)
    private String userName;
    @Size(min = 5)
    private String password;
    @OneToMany
    private List<TaskRegister> taskRegister = new ArrayList<>();

    public Employee(long id, String firstName, String lastName, String userName, String password, List<TaskRegister> taskRegister) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.userName = userName;
        this.password = password;
        this.taskRegister = taskRegister;
    }

    public Employee() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<TaskRegister> getTaskRegister() {
        return taskRegister;
    }

    public void setTaskRegister(List<TaskRegister> taskRegister) {
        this.taskRegister = taskRegister;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "id=" + id +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", taskRegister=" + taskRegister +
                '}';
    }


}
