import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.config.Configuration;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.internal.DefaultShellCallback;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.File;
import java.util.ArrayList;
import java.util.List;


//逆向生成
public class Mgb {

    public static void main(String[] args)  throws  Exception{

       List<String> warnings = new ArrayList<String>();
        boolean overwrite = true;
        File configFile = new File("D:\\JavaTime\\IDEA\\IdeaMake\\TravelForm\\src\\main\\resources\\Mbg.xml");
        ConfigurationParser cp = new ConfigurationParser(warnings);
        System.out.println(cp);
        Configuration config = cp.parseConfiguration(configFile);
        System.out.println(config);
        DefaultShellCallback callback = new DefaultShellCallback(overwrite);
        System.out.println(overwrite);
        MyBatisGenerator myBatisGenerator = new MyBatisGenerator(config, callback, warnings);
        myBatisGenerator.generate(null);
        System.out.println("成功");
    }
}
