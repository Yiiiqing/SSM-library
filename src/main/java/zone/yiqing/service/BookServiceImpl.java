package zone.yiqing.service;

import zone.yiqing.dao.BookMapper;
import zone.yiqing.pojo.Books;

import java.util.List;

/**
 * @Author Yiqing Zhang
 * @Date 2020-11-12 10:35 a.m.
 * @Version 1.0
 */
public class BookServiceImpl implements BookService {
    //service层调dao层:组合
    private BookMapper bookMapper;

    //为了spring托管,增加set方法
    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    @Override
    public Books queryBookByName(String bookName) {
        return bookMapper.queryBookByName(bookName);
    }

    public int addBook(Books books) {
        return bookMapper.addBook(books);
    }

    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    public int updateBook(Books books) {
        return bookMapper.updateBook(books);
    }

    public Books queryBookById(int id) {
        return bookMapper.queryBookById(id);
    }

    public List<Books> queryAllBook() {
        return bookMapper.queryAllBook();
    }
}
