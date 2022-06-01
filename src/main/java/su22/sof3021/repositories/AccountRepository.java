package su22.sof3021.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import su22.sof3021.entities.Account;

@Repository
public interface AccountRepository
	extends JpaRepository<Account, Integer> {
	// C1: @Query("SELECT acc FROM Account acc WHERE acc.username LIKE %:keyword%")
	// C2: @Query(name="Account.findByUsernameLike")
	public List<Account> findByUsernameLike(@Param("keyword") String username);
}
