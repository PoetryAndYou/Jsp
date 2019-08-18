<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
    <head>
        <%--    	<base href="<%=basePath%>"/>--%>
        <!-- 指定字符集 -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>修改用户</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="js/jquery-2.1.0.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container" style="width: 400px;">

            <h3 style="text-align: center;">修改联系人</h3>
            <form action="${pageContext.request.contextPath}/updateServlet" method="post">
                <input type="hidden" value=${up_user.id} name="up_id">
                <div class="form-group">
                    <label for="name">姓名：</label>
                    <input type="text" class="form-control" id="name" value=${up_user.name} name="name"
                           readonly="readonly"
                    />
                </div>

                <div class="form-group">
                    <label for="gender">性别：</label>
                    <c:if test="${up_user.gender=='男'}">
                        <input type="radio" name="gender" checked value="男"/>男
                        <input type="radio" name="gender" value="女"/>女
                    </c:if>
                    <c:if test="${up_user.gender=='女'}">
                        <input type="radio" name="gender" value="男"/>男
                        <input type="radio" name="gender" checked value="女"/>女
                    </c:if>
                </div>

                <div class="form-group">
                    <label for="age">年龄：</label>
                    <input type="text" class="form-control" id="age" value=${up_user.age} name="age"/>
                </div>

                <div class="form-group">
                    <label for="address">籍贯：</label>
                    <select name="address" class="form-control" id="address">
                        <c:if test="${up_user.address=='广东'}">
                            <option value="广东" selected>广东</option>
                            <option value="广西">广西</option>
                            <option value="湖南">湖南</option>
                        </c:if>
                        <c:if test="${up_user.address=='广西'}">
                            <option value="广东">广东</option>
                            <option value="广西" selected>广西</option>
                            <option value="湖南">湖南</option>
                        </c:if>
                        <c:if test="${up_user.address=='湖南'}">
                            <option value="广东">广东</option>
                            <option value="广西">广西</option>
                            <option value="湖南" selected>湖南</option>
                        </c:if>
                    </select>
                </div>

                <div class="form-group">
                    <label for="qq">QQ：</label>
                    <input type="text" class="form-control" name="qq" id="qq"
                           value=${up_user.qq}  placeholder="请输入QQ号码"/>
                </div>

                <div class="form-group">
                    <label for="email">Email：</label>
                    <input type="text" class="form-control" name="email" id="email"
                           value=${up_user.email} placeholder="请输入邮箱地址"/>
                </div>

                <div class="form-group" style="text-align: center">
                    <input class="btn btn-primary" type="submit" value="提交"/>
                    <input class="btn btn-default" type="reset" value="重置"/>
                    <input class="btn btn-default" type="button" value="返回"/>
                </div>
            </form>
        </div>
    </body>
</html>