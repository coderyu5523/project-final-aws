package shop.mtcoding.projoctbodykey.Challenge;

import jakarta.persistence.*;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;
import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Timestamp;
import java.time.LocalDateTime;

@NoArgsConstructor
@Data
@Table(name = "challenge_tb")
@Entity
public class Challenge {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String challengeName; // 챌린지명
    private String backgroundImg;// 챌린지 배경사진
    private String subTitle; // 산 지역
    private String distance; // 산 지역
    private Integer walking; // 걸어야할 걸음수
    private String badgeImg; // 뱃지 사진 경로
    private String content;  // 챌린지 내용
    private Integer coin; // 보상 코인
    private String period; //챌린지 기간

    @CreationTimestamp
    private Timestamp createdAt;

    @Builder

    public Challenge(Integer id, String challengeName, String backgroundImg, String subTitle, String distance, Integer walking, String badgeImg, String content, Integer coin, String period, Timestamp createdAt) {
        this.id = id;
        this.challengeName = challengeName;
        this.backgroundImg = backgroundImg;
        this.subTitle = subTitle;
        this.distance = distance;
        this.walking = walking;
        this.badgeImg = badgeImg;
        this.content = content;
        this.coin = coin;
        this.period = period;
        this.createdAt = createdAt;
    }
}
