import com.bdqn.mapper.BrTouristMapper;
import com.bdqn.mapper.PageMapper;
import com.bdqn.pojo.BrTourist;
import org.hibernate.cache.cfg.spi.DomainDataRegionBuildingContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class test {
    public static void main(String[] args) {


        ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationContext.xml");
        String[] nams = ac.getBeanDefinitionNames();
        for (String nam : nams) {
            //System.out.println(nam);
        }
        PageMapper bean = ac.getBean("pageMapper", PageMapper.class);
        List<BrTourist> list = bean.selImit(0,5);
        for (BrTourist brTourist : list) {
            System.out.println(brTourist);
        }

    }
}
