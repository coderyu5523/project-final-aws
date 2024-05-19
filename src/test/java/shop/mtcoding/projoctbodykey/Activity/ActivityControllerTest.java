package shop.mtcoding.projoctbodykey.Activity;

import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import shop.mtcoding.projoctbodykey._core.utils.JwtUtil;
import shop.mtcoding.projoctbodykey.activity.ActivityRequest;
import shop.mtcoding.projoctbodykey.user.User;

import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;

@Transactional
@AutoConfigureMockMvc // MockMvc IoC 로드
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.MOCK) // 모든 빈 IoC 로드
public class ActivityControllerTest {

    private ObjectMapper om = new ObjectMapper();

    @Autowired
    private MockMvc mvc;

    private static String jwt;

    @BeforeAll
    public static void setUp() {
        jwt = JwtUtil.create(
                User.builder()
                        .id(1)
                        .username("ssar")
                        .password("1234")
                        .build());
    }

    @Test
    public void waterUpdate_suc_test() throws Exception {
        // given
        ActivityRequest.WaterUpdateDTO reqDTO = new ActivityRequest.WaterUpdateDTO();
        reqDTO.setWater(1500);

        String reqBody = om.writeValueAsString(reqDTO);
        //System.out.println("reqBody : "+reqBody);

        // when
        ResultActions actions = mvc.perform(
                put("/api/activities/water-update")
                        .header("Authorization", "Bearer " + jwt)
                        .content(reqBody)
                        .contentType(MediaType.APPLICATION_JSON)
        );

        // eye
//        String respBody = actions.andReturn().getResponse().getContentAsString();
//        System.out.println("respBody : "+respBody);

        // then
        actions.andExpect(jsonPath("$.status").value(200));
        actions.andExpect(jsonPath("$.msg").value("성공"));
        actions.andExpect(jsonPath("$.body.water").value(1500));
    }

    @Test
    public void waterUpdate_fail_test() throws Exception {
        // given
        ActivityRequest.WaterUpdateDTO reqDTO = new ActivityRequest.WaterUpdateDTO();
        reqDTO.setWater(3001);

        String reqBody = om.writeValueAsString(reqDTO);
        //System.out.println("reqBody : "+reqBody);

        // when
        ResultActions actions = mvc.perform(
                put("/api/activities/water-update")
                        .header("Authorization", "Bearer " + jwt)
                        .content(reqBody)
                        .contentType(MediaType.APPLICATION_JSON)
        );

        // eye
//        String respBody = actions.andReturn().getResponse().getContentAsString();
//        System.out.println("respBody : "+respBody);

        // then
        actions.andExpect(jsonPath("$.status").value(400));
        actions.andExpect(jsonPath("$.msg").value("마신 물양은 3000 이하로 입력하여 주세요 : water"));
    }

    @Test
    public void walkingUpdate_suc_test() throws Exception {
        // given
        ActivityRequest.WalkingUpdateDTO reqDTO = new ActivityRequest.WalkingUpdateDTO();
        reqDTO.setWalking(10001);

        String reqBody = om.writeValueAsString(reqDTO);
        //System.out.println("reqBody : "+reqBody);

        // when
        ResultActions actions = mvc.perform(
                put("/api/activities/walking-update")
                        .header("Authorization", "Bearer " + jwt)
                        .content(reqBody)
                        .contentType(MediaType.APPLICATION_JSON)
        );

        // eye
//        String respBody = actions.andReturn().getResponse().getContentAsString();
//        System.out.println("respBody : "+respBody);

        // then
        actions.andExpect(jsonPath("$.status").value(200));
        actions.andExpect(jsonPath("$.msg").value("성공"));
        actions.andExpect(jsonPath("$.body.walking").value(10001));
    }

    @Test
    public void walkingUpdate_fail_test() throws Exception {
        // given
        ActivityRequest.WalkingUpdateDTO reqDTO = new ActivityRequest.WalkingUpdateDTO();
        reqDTO.setWalking(8000);

        String reqBody = om.writeValueAsString(reqDTO);
        //System.out.println("reqBody : "+reqBody);

        // when
        ResultActions actions = mvc.perform(
                put("/api/activities/walking-update")
                        .header("Authorization", "Bearer " + jwt)
                        .content(reqBody)
                        .contentType(MediaType.APPLICATION_JSON)
        );

        // eye
//        String respBody = actions.andReturn().getResponse().getContentAsString();
//        System.out.println("respBody : "+respBody);

        // then
        actions.andExpect(jsonPath("$.status").value(400));
        actions.andExpect(jsonPath("$.msg").value("저장 하고자 하는 걸음 수 값이 저장된 걸음 수 보다 같거나 적을 수 없어요."));
//        actions.andExpect(jsonPath("$.body.walking").value(5000));
//        actions.andExpect(jsonPath("$.body.water").value(350));
    }


    @Test
    public void update_suc_test() throws Exception {
        // given
        ActivityRequest.UpdateDTO reqDTO = new ActivityRequest.UpdateDTO();
        reqDTO.setWalking(5000);
        reqDTO.setWater(350);

        String reqBody = om.writeValueAsString(reqDTO);
        //System.out.println("reqBody : "+reqBody);

        // when
        ResultActions actions = mvc.perform(
                put("/api/activities/update")
                        .header("Authorization", "Bearer " + jwt)
                        .content(reqBody)
                        .contentType(MediaType.APPLICATION_JSON)
        );

        // eye
//        String respBody = actions.andReturn().getResponse().getContentAsString();
//        System.out.println("respBody : "+respBody);

        // then
        actions.andExpect(jsonPath("$.status").value(200));
        actions.andExpect(jsonPath("$.msg").value("성공"));
        actions.andExpect(jsonPath("$.body.walking").value(5000));
        actions.andExpect(jsonPath("$.body.water").value(350));
    }

    @Test
    public void update_fail_test() throws Exception {
        // given
        ActivityRequest.UpdateDTO reqDTO = new ActivityRequest.UpdateDTO();
        reqDTO.setWalking(500000000);
        reqDTO.setWater(350);

        String reqBody = om.writeValueAsString(reqDTO);
        //System.out.println("reqBody : "+reqBody);

        // when
        ResultActions actions = mvc.perform(
                put("/api/activities/update")
                        .header("Authorization", "Bearer " + jwt)
                        .content(reqBody)
                        .contentType(MediaType.APPLICATION_JSON)
        );

        // eye
//        String respBody = actions.andReturn().getResponse().getContentAsString();
//        System.out.println("respBody : "+respBody);

        // then
        actions.andExpect(jsonPath("$.status").value(400));
        actions.andExpect(jsonPath("$.msg").value("걸음수가 너무 많이 들어왔어요 : walking"));
    }

    @Test
    public void waterDetail_test() throws Exception {
        // given

        // when
        ResultActions actions = mvc.perform(
                get("/api/activities/water/detail")
                        .header("Authorization", "Bearer " + jwt)
        );

        // eye
//        String respBody = actions.andReturn().getResponse().getContentAsString();
//        System.out.println("respBody : " + respBody);
//        int statusCode = actions.andReturn().getResponse().getStatus();
//        System.out.println("statusCode : "+statusCode);

        // then
        actions.andExpect(jsonPath("$.status").value(200))
                .andExpect(jsonPath("$.msg").value("성공"))
                .andExpect(jsonPath("$.body.dayAcitivityId").value(4))
                .andExpect(jsonPath("$.body.dayWater").value(2500))
                .andExpect(jsonPath("$.body.weakWater[0].date").value("2024-05-15T15:00:00.000+00:00"))
                .andExpect(jsonPath("$.body.weakWater[0].water").value(2000))
                .andExpect(jsonPath("$.body.weakWater[1].date").value("2024-05-16T15:00:00.000+00:00"))
                .andExpect(jsonPath("$.body.weakWater[1].water").value(2300));
    }

    @Test
    public void walkingDetail_test() throws Exception {
        // given

        // when
        ResultActions actions = mvc.perform(
                get("/api/activities/walking/detail")
                        .header("Authorization", "Bearer " + jwt)
        );

        // eye
//        String respBody = actions.andReturn().getResponse().getContentAsString();
//        System.out.println("respBody : " + respBody);
//        int statusCode = actions.andReturn().getResponse().getStatus();
//        System.out.println("statusCode : "+statusCode);

        // then
        actions.andExpect(jsonPath("$.status").value(200))
                .andExpect(jsonPath("$.msg").value("성공"))
                .andExpect(jsonPath("$.body.dayAcitivityId").value(4))
                .andExpect(jsonPath("$.body.dayWalking").value(10000))
                .andExpect(jsonPath("$.body.totalMonthWalking").value(57684))
                .andExpect(jsonPath("$.body.avgMonthWalking").value(8240.57))
                .andExpect(jsonPath("$.body.rateAvgWalking").value(9.67))
                .andExpect(jsonPath("$.body.maxWalking").value(10000))
                .andExpect(jsonPath("$.body.maxWalkingDay").value("2024-05-19T15:00:00.000+00:00"))
                .andExpect(jsonPath("$.body.weakWalkings[0].date").value("2024-05-15T15:00:00.000+00:00"))
                .andExpect(jsonPath("$.body.weakWalkings[0].walking").value(5325))
                .andExpect(jsonPath("$.body.weakWalkings[1].date").value("2024-05-16T15:00:00.000+00:00"))
                .andExpect(jsonPath("$.body.weakWalkings[1].walking").value(7028));

    }

    @Test
    public void activitiesBodyDate_test() throws Exception {
        // given

        // when
        ResultActions actions = mvc.perform(
                get("/api/activities/body-date")
                        .header("Authorization", "Bearer " + jwt)
        );

        // eye
//        String respBody = actions.andReturn().getResponse().getContentAsString();
//        System.out.println("respBody : " + respBody);
//        int statusCode = actions.andReturn().getResponse().getStatus();
//        System.out.println("statusCode : "+statusCode);

        // then
        actions.andExpect(jsonPath("$.status").value(200))
                .andExpect(jsonPath("$.msg").value("성공"))
                .andExpect(jsonPath("$.body.userId").value(1))
                .andExpect(jsonPath("$.body.fat").value(21.3))
                .andExpect(jsonPath("$.body.muscle").value(21.5))
                .andExpect(jsonPath("$.body.weight").value(75.8))
                .andExpect(jsonPath("$.body.goalFat").value(12.0))
                .andExpect(jsonPath("$.body.goalMuscle").value(35.0))
                .andExpect(jsonPath("$.body.goalWeight").value(70.0))
                .andExpect(jsonPath("$.body.fatTimeLine[0].bodyDateId").value(3))
                .andExpect(jsonPath("$.body.fatTimeLine[0].fat").value(21.3))
                .andExpect(jsonPath("$.body.fatTimeLine[0].fatTimeLine").value("2024-05-22T10:32:00.000+00:00"))
                .andExpect(jsonPath("$.body.muscleTimeLine[0].bodyDateId").value(3))
                .andExpect(jsonPath("$.body.muscleTimeLine[0].muscle").value(21.5))
                .andExpect(jsonPath("$.body.muscleTimeLine[0].muscleTimeLine").value("2024-05-22T10:32:00.000+00:00"))
                .andExpect(jsonPath("$.body.weightTimeLine[0].bodyDateId").value(3))
                .andExpect(jsonPath("$.body.weightTimeLine[0].weight").value(75.8))
                .andExpect(jsonPath("$.body.weightTimeLine[0].weightTimeLine").value("2024-05-22T10:32:00.000+00:00"));
    }

    @Test
    public void activitiesDate_test() throws Exception {
        // given
        String dateTimeString = "2024-05-21T18:12:00.000+00:00";
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSXXX");
        LocalDateTime dateTime = LocalDateTime.parse(dateTimeString, formatter);
        LocalDate date = dateTime.toLocalDate();

        // when
        ResultActions actions = mvc.perform(
                get("/api/activities/date/" + date)
                        .header("Authorization", "Bearer " + jwt)
        );

        // eye
//        String respBody = actions.andReturn().getResponse().getContentAsString();
//        System.out.println("respBody : " + respBody);
//        int statusCode = actions.andReturn().getResponse().getStatus();
//        System.out.println("statusCode : "+statusCode);

        // then
        actions.andExpect(jsonPath("$.status").value(200));
        actions.andExpect(jsonPath("$.msg").value("성공"));
        actions.andExpect(jsonPath("$.body.createdAt").value("2024-05-21T18:12:00.000+00:00"));
        actions.andExpect(jsonPath("$.body.walking").value(7028));
        actions.andExpect(jsonPath("$.body.drinkWater").value(2300));
        actions.andExpect(jsonPath("$.body.kcal").value(0));
        actions.andExpect(jsonPath("$.body.weight").value(76.3));
    }
}