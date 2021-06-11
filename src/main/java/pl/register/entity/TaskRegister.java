package pl.register.entity;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Entity
@Table(name = "orderRegister")
public class TaskRegister {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private int employeeID;
    private String customerFirstName;
    private String customerLastName;
    @Size(min = 9)
    private String customerTelephone;
    @Size(min = 11)
    private String customerPesel;
    private String vehicleModel;
    private String describeOrder;
    private String orderCost;
    private boolean isArchive;

    public TaskRegister(Long id, int employeeID, String customerFirstName,
                        String customerLastName, String customerTelephone,
                        String customerPesel, String vehicleModel,
                        String describeOrder, String orderCost, boolean isArchive) {
        this.id = id;
        this.employeeID = employeeID;
        this.customerFirstName = customerFirstName;
        this.customerLastName = customerLastName;
        this.customerTelephone = customerTelephone;
        this.customerPesel = customerPesel;
        this.vehicleModel = vehicleModel;
        this.describeOrder = describeOrder;
        this.orderCost = orderCost;
        this.isArchive = isArchive;
    }

    public TaskRegister() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getEmployeeID() {
        return employeeID;
    }

    public void setEmployeeID(int employeeID) {
        this.employeeID = employeeID;
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

    public String getCustomerTelephone() {
        return customerTelephone;
    }

    public void setCustomerTelephone(String customerTelephone) {
        this.customerTelephone = customerTelephone;
    }

    public String getCustomerPesel() {
        return customerPesel;
    }

    public void setCustomerPesel(String customerPesel) {
        this.customerPesel = customerPesel;
    }

    public String getVehicleModel() {
        return vehicleModel;
    }

    public void setVehicleModel(String vehicleModel) {
        this.vehicleModel = vehicleModel;
    }

    public String getDescribeOrder() {
        return describeOrder;
    }

    public void setDescribeOrder(String describeOrder) {
        this.describeOrder = describeOrder;
    }

    public String getOrderCost() {
        return orderCost;
    }

    public void setOrderCost(String orderCost) {
        this.orderCost = orderCost;
    }

    public boolean isArchive() {
        return isArchive;
    }

    public Object setArchive(boolean archive) {
        isArchive = archive;
        return null;
    }

    @Override
    public String toString() {
        return "Task{" +
                "id=" + id +
                ", customerFirstName='" + customerFirstName + '\'' +
                ", customerLastName='" + customerLastName + '\'' +
                ", telephone='" + customerTelephone + '\'' +
                ", PESEL='" + customerPesel + '\'' +
                ", weselModel='" + vehicleModel + '\'' +
                ", describe='" + describeOrder + '\'' +
                ", cost='" + orderCost + '\'' +
                '}' + "\n";
    }
}
