package zone.yiqing.service;

import org.apache.ibatis.annotations.Param;
import zone.yiqing.pojo.Books;

import java.util.List;

/**
 * @Author Yiqing Zhang
 * @Date 2020-11-12 10:33 a.m.
 * @Version 1.0
 */
public interface BookService {
    // 增加一本书
    int addBook(Books books);
    // 删除一本书
    int deleteBookById(int id);
    // 更新一本书
    int updateBook(Books books);
    // 查询一本书
    Books queryBookById(int id);
    // 查询全部书
    List<Books> queryAllBook();
    // 搜索
    Books queryBookByName(String bookName);
}
