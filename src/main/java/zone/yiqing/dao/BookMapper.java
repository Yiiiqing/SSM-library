    package zone.yiqing.dao;

    import org.apache.ibatis.annotations.Param;
    import zone.yiqing.pojo.Books;

    import java.util.List;

    /**
     * @Author Yiqing Zhang
     * @Date 2020-11-12 10:22 a.m.
     * @Version 1.0
     */
    public interface BookMapper {
        // 增加一本书
        int addBook(Books books);
        // 删除一本书
        int deleteBookById(@Param("bookId") int id);
        // 更新一本书
        int updateBook(Books books);
        // 查询一本书
        Books queryBookById(@Param("bookId") int id);
        // 查询全部书
        List<Books> queryAllBook();
        // 搜索
        Books queryBookByName(@Param("bookName") String bookName);
    }
