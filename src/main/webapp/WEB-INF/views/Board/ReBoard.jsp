<%--
  Created by IntelliJ IDEA.
  User: Jinuk
  Date: 2017-07-19
  Time: 오후 4:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@include file="../include/header.jsp"%>
<html>
<head>
    <link href="/resources/bootstrap/css/Board.css" rel="stylesheet" type="text/css" />
    <title>Re Board</title>
</head>
<body style="text-align: center">
<h2>게시판 답글</h2>
<form method="post">
    <%--<input type='hidden' name='id' value="${id}">--%> <%-- settingVO에 값이 들어가있는데 여기서 한번 더 post를 하니까 두번 들어간다. --%>
    <input type="hidden" name="root" value="${settingVO.root}">
    <input type="hidden" name="pno" value="${settingVO.pno}">
    <input type="hidden" name="cno" value="${settingVO.cno}">
    <input type="hidden" name="depth" value="${settingVO.depth}">
    <input type="hidden" name="lvl" value="${settingVO.lvl}">
    <table width="600">
        <colgroup>
            <col width="10%">
            <col width="70%">
        </colgroup>
        <thead>
        <tr>
            <th>제목</th>
            <td><input type="text" name="title" value="(RE)${settingVO.title}" size="69"></td>
        </tr>
        <thead>
        </thead>
        <tbody>
        <tr>
            <th>내용</th>
            <td><textarea name="contents" cols="70" rows="15" style="resize: none">${settingVO.contents}</textarea></td>
        </tr>
        </tbody>
        <tfoot>
        <tr style="text-align: right">
            <td colspan="2">
                <button type="submit" id="btnWrite">Write</button>
                <button type="button" id="btnCancel">Cancel</button>
            </td>
        </tr>
        </tfoot>
    </table>
</form>
<div style="margin-top: 700px">
    <%@include file="../include/footer.jsp" %>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>
<script>
    $(document).ready(function () {
        $("#btnCancel").on('click', function () {
            history.back();
        });
    });
</script>