package shop.mtcoding.projoctbodykey.attendChallenge;

import jakarta.validation.constraints.*;
import lombok.Data;
import shop.mtcoding.projoctbodykey.challenge.Challenge;
import shop.mtcoding.projoctbodykey.user.SessionUser;
import shop.mtcoding.projoctbodykey.user.User;

import java.sql.Timestamp;

public class AttendChallengeRequest {

    @Data
    public static class SaveDTO {

        @Null(message = "챌린지 값만 넣어주세요 (user값이 들어왔음)")
        private User user;

        @NotNull(message = "Challenge는 필수 입력 항목입니다.")
        private Challenge challenge;

        @Null(message = "챌린지 값만 넣어주세요 (openingTime값이 들어왔음)")
        private Timestamp openingTime;

        @Null(message = "챌린지 값만 넣어주세요 (closingTime값이 들어왔음)")
        private Timestamp closingTime;

        @Null(message = "챌린지 값만 넣어주세요 (status값이 들어왔음)")
        private Boolean status;

        public AttendChallenge toEntity(Timestamp closingTime, SaveDTO reqDTO, User sessionUser) {
            return AttendChallenge.builder()
                    .user(sessionUser)
                    .challenge(reqDTO.challenge)
                    .closingTime(closingTime)
                    .status(null)
                    .build();
        }
    }

    @Data
    public static class StatusUpdateDTO {

        @NotNull(message = "null값을 넣을 수 없어요")
        private Boolean status;
    }
}
