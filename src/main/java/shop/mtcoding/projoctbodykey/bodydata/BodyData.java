package shop.mtcoding.projoctbodykey.bodydata;

import jakarta.persistence.*;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;
import shop.mtcoding.projoctbodykey.user.User;

import java.sql.Timestamp;


@NoArgsConstructor
@Data
@Table(name = "bodydata_tb")
@Entity
public class BodyData {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    private User user;

    private Double weight;
    private Double muscle;
    private Double fat;

    private Timestamp createdAt;

    @Builder
    public BodyData(Integer id, User user, Double weight, Double muscle, Double fat, Timestamp createdAt) {
        this.id = id;
        this.user = user;
        this.weight = weight;
        this.muscle = muscle;
        this.fat = fat;
        this.createdAt = createdAt;
    }
}
