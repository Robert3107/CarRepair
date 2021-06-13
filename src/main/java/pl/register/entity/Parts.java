package pl.register.entity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "parts")
public class Parts {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @NotNull
    private String partName;
    @NotNull
    private String mark;
    @NotNull
    private String producer;
    @Size(min = 3)
    private String category;
    private String productionCountry;
    @NotNull
    private String series;
    @NotNull
    private String price;

    public Parts(long id, String partName, String mark, String producer, String category, String productionCountry, String series, String price) {
        this.id = id;
        this.partName = partName;
        this.mark = mark;
        this.producer = producer;
        this.category = category;
        this.productionCountry = productionCountry;
        this.series = series;
        this.price = price;
    }

    public Parts() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getPartName() {
        return partName;
    }

    public void setPartName(String partName) {
        this.partName = partName;
    }

    public String getMark() {
        return mark;
    }

    public void setMark(String mark) {
        this.mark = mark;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getProductionCountry() {
        return productionCountry;
    }

    public void setProductionCountry(String productionCountry) {
        this.productionCountry = productionCountry;
    }

    public String getSeries() {
        return series;
    }

    public void setSeries(String series) {
        this.series = series;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Parts{" +
                "id=" + id +
                ", partName='" + partName + '\'' +
                ", mark='" + mark + '\'' +
                ", producer='" + producer + '\'' +
                ", category='" + category + '\'' +
                ", productionCountry='" + productionCountry + '\'' +
                ", series='" + series + '\'' +
                ", price='" + price + '\'' +
                '}';
    }
}
