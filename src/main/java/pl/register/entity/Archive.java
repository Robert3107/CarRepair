package pl.register.entity;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Entity
@Table(name = "taskArchive")
public class Archive {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String customerFirstName;
    private String customerLastName;
    private String customerTelephone;
    private String customerPesel;
    private String weselModel;
    private String describeOrder;
    private String orderCost;

    public Archive(Long id, String customerFirstName, String customerLastName, String customerTelephone, String customerPesel, String weselModel, String describeOrder, String orderCost) {
        this.id = id;
        this.customerFirstName = customerFirstName;
        this.customerLastName = customerLastName;
        this.customerTelephone = customerTelephone;
        this.customerPesel = customerPesel;
        this.weselModel = weselModel;
        this.describeOrder = describeOrder;
        this.orderCost = orderCost;
    }

    public Archive() {
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

    public String getWeselModel() {
        return weselModel;
    }

    public void setWeselModel(String weselModel) {
        this.weselModel = weselModel;
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
}
