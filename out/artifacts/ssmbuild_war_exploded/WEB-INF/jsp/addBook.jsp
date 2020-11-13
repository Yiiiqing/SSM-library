<%--
  Created by IntelliJ IDEA.
  User: Yiqing
  Date: 2020-11-13
  Time: 11:01 a.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增书籍</title>
    <%--bootstrap--%>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>新增书籍</small>
                    </h1>
                </div>
            </div>
        </div>

        <form action="${pageContext.request.contextPath}/book/addBook" method="post">
            <div class="form-group">
                <label for="bkname">书籍名称:</label>
                <input type="text" name="bookName" class="form-control" id="bkname" required>
            </div>
            <div class="form-group">
                <label for="bknumber">书籍数量:</label>
                <input type="text" name="bookCounts" class="form-control" id="bknumber" required>
            </div>
            <div class="form-group">
                <label for="bkdesc">书籍描述:</label>
                <input type="text" name="detail" class="form-control" id="bkdesc" required>
            </div>
            <div class="form-group">
                <input type="submit" class="form-control" value="添加">
            </div>
        </form>
    </div>
</body>
</html>
