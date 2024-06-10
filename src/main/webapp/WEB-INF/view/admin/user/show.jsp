<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="" />
                <meta name="author" content="" />
                <title>Dashboard - SB Admin</title>
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
            </head>

            <body class="sb-nav-fixed">
                <%@ include file="../layout/header.jsp" %>
                    <div id="layoutSidenav">
                        <%@ include file="../layout/sidebar.jsp" %>

                            <div id="layoutSidenav_content">
                                <main>
                                    <div class="container-fluid px-4">
                                        <h1 class="mt-4">Manage User</h1>
                                        <ol class="breadcrumb mb-4">
                                            <li class="breadcrumb-item active">
                                                <a href="/admin">Dashboard</a>
                                            </li>
                                            <li class="breadcrumb-item active">Users</li>
                                        </ol>
                                        <div class="container mt-5">
                                            <div class="row">
                                                <div class="col-12 mx-auto">
                                                    <div class="d-flex justify-content-between">
                                                        <h3>Table User</h3>
                                                        <a href="/admin/user/create" class="btn btn-primary">Create
                                                            User</a>
                                                    </div>
                                                    <hr />
                                                    <table class="table table-bordered table-hover" style="border: 1;">
                                                        <thead>
                                                            <tr>
                                                                <th>ID</th>
                                                                <th>Email</th>
                                                                <th>Full Name</th>
                                                                <th>Role</th>
                                                                <th>Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach var="user" items="${users1}">
                                                                <tr>
                                                                    <th scope="row">${user.id}</th>
                                                                    <td>${user.email}</td>
                                                                    <td>${user.fullName}</td>
                                                                    <td>${user.role.name}</td>
                                                                    <td>
                                                                        <a href="/admin/user/${user.id}"
                                                                            class="btn btn-success">View</a>
                                                                        <a href="/admin/user/update/${user.id}"
                                                                            class="btn btn-warning mx-2">Update</a>
                                                                        <a href="/admin/user/delete/${user.id}"
                                                                            class="btn btn-danger">Delete</a>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination justify-content-center">
                                            <li class="page-item"></li>
                                            <a class="page-link ${currentPage == 1 ? 'disabled ' : ''}"
                                                href="/admin/user?page=${currentPage-1}" aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                            </li>
                                            <c:forEach begin="1" end="${totalPages}" varStatus="loop">
                                                <li class="page-item ${loop.index == currentPage ? 'active' : ''}">
                                                    <a class="page-link" href="/admin/user?page=${loop.index }">
                                                        ${loop.index}
                                                    </a>
                                                </li>
                                            </c:forEach>

                                            <li class="page-item">
                                                <a class="page-link ${currentPage == totalPages ? 'disabled' : ''}"
                                                    href="/admin/user?page=${currentPage+1}" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </main>
                                <%@ include file="../layout/footer.jsp" %>

                            </div>
                    </div>
                    <style>
                        td {
                            width: 250px ! important;
                        }
                    </style>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                        crossorigin="anonymous"></script>
                    <script src="/js/scripts.js"></script>
            </body>

            </html>