package shop.mtcoding.projoctbodykey.activity;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import shop.mtcoding.projoctbodykey._core.utils.ApiUtil;
import shop.mtcoding.projoctbodykey.bodydata.BodyData;
import shop.mtcoding.projoctbodykey.bodydata.BodyDataResponse;
import shop.mtcoding.projoctbodykey.bodydata.BodyDataService;
import shop.mtcoding.projoctbodykey.user.SessionUser;

import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@RequiredArgsConstructor
@RestController
public class ActivityController {
    private final ActivityService activityService;
    private final BodyDataService bodyDataService;
    private final HttpSession session;

    @GetMapping("/api/activities/date/{createdAt}")
    public ResponseEntity<?> activitiesDate(@PathVariable("createdAt") String createdAt) {

        // createdAtString을 LocalDateTime으로 변환
        LocalDateTime time = LocalDateTime.parse(createdAt, DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm"));

        SessionUser user = (SessionUser) session.getAttribute("sessionUser");
        ActivityResponse.activitiesDateDTO respDTO = activityService.activitiesDate(time, user);

        return ResponseEntity.ok(new ApiUtil<>(respDTO));
    }

    @GetMapping("/api/activities/body-date")
    public ResponseEntity<?> activitiesBodyDate() {
        SessionUser user = (SessionUser) session.getAttribute("sessionUser");
        BodyDataResponse.BodyDateDTO respDTO = bodyDataService.activitiesBodyDate(user);

        return ResponseEntity.ok(new ApiUtil<>(respDTO));
    }

    @GetMapping("/mainpage")
    public ResponseEntity<?> mainpage() {
       //ActivityResponse.MainResumesDTO> respDTO = mainService.mainResumes();

        return ResponseEntity.ok(new ApiUtil<>(null));
    }

    //워킹 디테일 페이지
    @GetMapping("/api/activities/walking/detail")
    public ResponseEntity<?> walkingDetail() {
        SessionUser user = (SessionUser) session.getAttribute("sessionUser");
        ActivityResponse.WalkingDetail respDTO = activityService.getWalkingDetail(user.getId());
        return ResponseEntity.ok(new ApiUtil<>(respDTO));
    }

    //물 디테일 페이지
    @GetMapping("/api/activities/water/detail")
    public ResponseEntity<?> waterDetail() {
        SessionUser user = (SessionUser) session.getAttribute("sessionUser");
        ActivityResponse.WaterDetail respDTO=activityService.getWaterDetail(user.getId());
        return ResponseEntity.ok(new ApiUtil<>(respDTO));
    }
}
