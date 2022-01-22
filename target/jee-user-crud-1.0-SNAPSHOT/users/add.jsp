<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">

<%@ include file="header.jsp" %>


<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
        <a href="<c:url value="/user/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Lista użytkowników</a>
    </div>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Dodaj użytkownika</h6>
        </div>
        <div class="card-body">
            <div>
                <form method="post">
                    <div class="form-group">
                        <Label>Nazwa
                            <input type="text" name="userName" class="form-control" id="userName"
                                   placeholder="Nazwa użytkownika"/>
                        </Label>
                    </div>
                    <div class="form-group">
                        <Label>Email
                            <input type="text" name="email" class="form-control" id="email" placeholder="Email"/>
                        </Label>
                    </div>
                    <div class="form-group">
                        <Label>Hasło
                            <input type="password" name="password" class="form-control" id="password"
                                   placeholder="Hasło użytkownika"/></br>
                        </Label>
                    </div>
                    <button type="submit" class="btn btn-primary">Zapisz</button>
                </form>

            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->
</div>
<!-- End of Main Content -->

<%@ include file="footer.jsp" %>
</html>