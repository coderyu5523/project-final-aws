package shop.mtcoding.projoctbodykey.bodydata;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface BodydataJPARepository extends JpaRepository<Bodydata, Integer> {

    @Query("""
            select a
            from Activity a
            join fetch a.user
            where a.user.id = :userId 
            order by a.createdAt desc
            """)
    Optional<List<Bodydata>> findBodySevenByUserId(@Param("userId") Integer userId, Pageable pageable);


}