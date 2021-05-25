package pl.register.entity;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Entity
@Table(name = "registers")
public class TaskRegister {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String customerFirstName;
    private String customerLastName;
    @Size(min = 9, max = 9)
    private String telephone;
    @Size(min = 11, max = 11)
    private String PESEL;
    private String vehicleModel;
    private String describe;
    private String cost;

    public TaskRegister(Long id, String customerFirstName, String customerLastName, String telephone, String PESEL, String vehicleModel, String describe, String cost) {
        this.id = id;
        this.customerFirstName = customerFirstName;
        this.customerLastName = customerLastName;
        this.telephone = telephone;
        this.PESEL = PESEL;
        this.vehicleModel = vehicleModel;
        this.describe = describe;
        this.cost = cost;
    }

    public TaskRegister() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCustomerFirstName() {
        return customerFirstName;
    }

    public void setCustomerFirstName(String customerFirstName) {
        this.customerFirstName = customerFirstName;
    }

    public String getCustomerLastName() {
        return customerLastName;
    }

    public void setCustomerLastName(String customerLastName) {
        this.customerLastName = customerLastName;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getPESEL() {
        return PESEL;
    }

    public void setPESEL(String PESEL) {
        this.PESEL = PESEL;
    }

    public String getVehicleModel() {
        return vehicleModel;
    }

    public void setVehicleModel(String vehicleModel) {
        this.vehicleModel = vehicleModel;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getCost() {
        return cost;
    }

    public void setCost(String cost) {
        this.cost = cost;
    }

    @Override
    public String toString() {
        return "Task{" +
                "id=" + id +
                ", customerFirstName='" + customerFirstName + '\'' +
                ", customerLastName='" + customerLastName + '\'' +
                ", telephone='" + telephone + '\'' +
                ", PESEL='" + PESEL + '\'' +
                ", weselModel='" + vehicleModel + '\'' +
                ", describe='" + describe + '\'' +
                ", cost='" + cost + '\'' +
                '}';
    }
}
