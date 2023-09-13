package mine.design.oa.dao;

import mine.design.oa.entity.Good;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository("goodDao")
public interface GoodDao {
     List<Good> selectAll();
}
