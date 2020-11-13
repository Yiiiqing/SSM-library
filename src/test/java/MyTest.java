import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import zone.yiqing.pojo.Books;
import zone.yiqing.service.BookService;

/**
 * @Author Yiqing Zhang
 * @Date 2020-11-12 2:19 p.m.
 * @Version 1.0
 */
public class MyTest {

    @Test
    public void test(){
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService bookServiceImpl = context.getBean("BookServiceImpl", BookService.class);
        for (Books books: bookServiceImpl.queryAllBook()){
            System.out.println(books);
        }
    }
}
