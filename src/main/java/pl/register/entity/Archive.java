package pl.register.entity;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Entity
@Table(name = "archive")
public class Archive {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String customerFirstName;
    private String customerLastName;
    private String telephone;
    private String PESEL;
    private String weselModel;
    @Size(min = 1, max = 600)
    private String describe;
    private String cost;

    public Archive(Long id, String customerFirstName, String customerLastName, String telephone, String PESEL, String weselModel, String describe, String cost) {
        this.id = id;
        this.customerFirstName = customerFirstName;
        this.customerLastName = customerLastName;
        this.telephone = telephone;
        this.PESEL = PESEL;
        this.weselModel = weselModel;
        this.describe = describe;
        this.cost = cost;
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

    public String getWeselModel() {
        return weselModel;
    }

    public void setWeselModel(String weselModel) {
        this.weselModel = weselModel;
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
        return "Archive{" +
                "id=" + id +
                ", customerFirstName='" + customerFirstName + '\'' +
                ", customerLastName='" + customerLastName + '\'' +
                ", telephone='" + telephone + '\'' +
                ", PESEL='" + PESEL + '\'' +
                ", weselModel='" + weselModel + '\'' +
                ", describe='" + describe + '\'' +
                ", cost='" + cost + '\'' +
                '}';
    }
}
