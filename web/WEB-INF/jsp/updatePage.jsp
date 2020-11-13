<%--
  Created by IntelliJ IDEA.
  User: Yiqing
  Date: 2020-11-13
  Time: 11:37 a.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
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
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <%--提交要上传id,否则无法查找修改,前端传递隐藏域--%>
        <input type="hidden" name="bookID" value="${QBook.bookID}">
        <div class="form-group">
            <label for="bkname">书籍名称:</label>
            <input type="text" name="bookName" class="form-control" id="bkname" value="${QBook.bookName}" required>
        </div>
        <div class="form-group">
            <label for="bknumber">书籍数量:</label>
            <input type="text" name="bookCounts" class="form-control" id="bknumber" value="${QBook.bookCounts}"
                   required>
        </div>
        <div class="form-group">
            <label for="bkdesc">书籍描述:</label>
            <input type="text" name="detail" class="form-control" id="bkdesc" value="${QBook.detail}" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="添加">
        </div>
    </form>
</div>
</body>
</html>
