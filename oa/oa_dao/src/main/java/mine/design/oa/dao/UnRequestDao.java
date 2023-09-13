package mine.design.oa.dao;


import mine.design.oa.entity.UnRequest;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository("unRequestDao")
public interface UnRequestDao {
    List<UnRequest> selectAll();
}
