<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/2/27
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="/admin/base/header.jsp"></jsp:include>
<jsp:include page="/admin/base/nav.jsp"></jsp:include>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 此处编写内容  -->
<div id="page-wrapper">
    <div id="page-inner">
        <c:if test="${readers != null}">
            <table class="table table-bordered table-hover " id="table">
                <thead>
                <tr>
                    <th>编号</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>电话</th>
                    <th>注册时间</th>
                    <th>上次登录时间</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach  items="${readers }" var="reader">
                    <tr>
                        <td>${reader.id}</td>
                        <td>${reader.name}</td>
                        <td><c:choose>
                            <c:when test="${reader.gender == 1 }">女</c:when>
                            <c:otherwise>男</c:otherwise>
                        </c:choose>
                        </td>
                        <td>${reader.phone}</td>
                        <td><fmt:formatDate value="${reader.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td><fmt:formatDate value="${reader.lastDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td><button type="button" id="editBtn" class="btn btn-primary btn-sm">编辑</button>&nbsp;&nbsp;<button type="button" class="btn btn-danger btn-sm"  id="delBtn" >删除</button></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="col-md-5 col-md-offset-3">
                <jsp:include page="/admin/base/splitPage.jsp"/>
            </div>
        </c:if>
    </div>
</div>
<jsp:include page="/admin/base/footer.jsp"></jsp:include>