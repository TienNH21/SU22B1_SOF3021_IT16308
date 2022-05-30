<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link sytle="stylesheet" href="/su22b1_it16308_sof3021/css/bootstrap.min.css" />
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Fullname</th>
				<th>Username</th>
				<th>Email</th>
				<th>Photo</th>
				<th>Activated</th>
				<th>Role</th>
				<th colspan="2">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${ data.content }" var="acc">
			<tr>
				<td>${ acc.id }</td>
				<td>${ acc.fullname }</td>
				<td>${ acc.username }</td>
				<td>${ acc.email }</td>
				<td>${ acc.photo }</td>
				<td>${ acc.activated }</td>
				<td>${ acc.admin }</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<div class="row">
		<div class="col-6">
			<ul class="pagination">
				<li class="page-item">
					<a href="/su22b1_it16308_sof3021/admin/account/index">
						First page
					</a>
				</li>
				<li class="page-item">
					<a href="/su22b1_it16308_sof3021/admin/account/index?page=${ data.number - 1 }">
						Previous page
					</a>
				</li>
				<li class="page-item">
					<a href="#">
						${ data.number }
					</a>
				</li>
				<li class="page-item">
					<a href="/su22b1_it16308_sof3021/admin/account/index?page=${ data.number + 1 }">
						Next page
					</a>
				</li>
				<li class="page-item">
					<a href="/su22b1_it16308_sof3021/admin/account/index?page=${ data.totalPages - 1 }">
						Last page
					</a>
				</li>
			</ul>
		</div>
		<div class="col-6"></div>
	</div>
	
	<script src="/su22b1_it16308_sof3021/js/jquery.min.js"></script>
	<script src="/su22b1_it16308_sof3021/js/popper.min.js"></script>
	<script src="/su22b1_it16308_sof3021/js/bootstrap.min.js"></script>
</body>
</html>