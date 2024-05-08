package shop.mtcoding.projoctbodykey.attendChallenge;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

import java.util.List;

@DataJpaTest
public class AttendChallengeJPARepositoryTest {

    @Autowired
    private AttendChallengeJPARepository attendChallengeJPARepository;

    @Test
    public void closingTime_test(){
        // given
        Integer userId = 1;

        // when
        AttendChallenge attendChallenge = attendChallengeJPARepository.findByStatusNull(userId);

        // eye
        System.out.println(attendChallenge);
    }

    @Test
    public void status_test(){
        // given
        Integer userId = 1;

        // when
        List<AttendChallenge> attendChallenge = attendChallengeJPARepository.status(userId);

        // eye
        System.out.println(attendChallenge.get(1).getStatus());
    }

    @Test
    public void partChallenges_test(){
        // given
        Integer userId = 1;

        // when
        List<AttendChallenge> attendChallenge = attendChallengeJPARepository.partChallenges(userId);

        // eye
        System.out.println(attendChallenge.toString());
    }

    @Test
    public void findByChallengeIdAndUserId_test(){
        // given
        Integer userId = 1;
        Integer challengeId = 9;

        // when
        Boolean attendChallenge = attendChallengeJPARepository.findByChallengeIdAndUserId(challengeId, userId);

        System.out.println(attendChallenge);
    }
}
