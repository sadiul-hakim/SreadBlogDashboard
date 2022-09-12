<%-- 
    Document   : AdminAction
    Created on : Sep 12, 2022, 2:01:18 PM
    Author     : Hakim
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="com.hakim.entities.Admin" %>
<%@page import="jakarta.servlet.RequestDispatcher" %>

<%
    //authentication
    RequestDispatcher dispatcher=request.getRequestDispatcher("AdminLogin.jsp");
    Admin admin=(Admin)session.getAttribute("admin");
    if(admin==null){
        dispatcher.forward(request,response);
    }
%>


<!DOCTYPE html>
<html>
    <jsp:include page="head.jsp" >
        <jsp:param name="title" value="Dashboard"/>
    </jsp:include>
    <body>
        <%@include file="Navbar.jsp" %>
        <%-- Side Bar Satrts --%>
        <div class="sidebar bg-white">

            <div class="accordion mt-5" id="accordionExample">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingOne">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            Users
                        </button>
                    </h2>
                    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <a href="ShowUsers.jsp" class="p-2 text-info">Show All Users</a>

                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingTwo">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            Posts
                        </button>
                    </h2>
                    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <a href="ShowPosts.jsp" class="p-2 text-info">Show All Posts</a>

                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingThree">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            Categories
                        </button>
                    </h2>
                    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <a href="ShowCategories.jsp" class="p-2 text-info">Show All Categories</a>
                            <a href="AddCategory.jsp" class="p-2 text-info ">Categories Actions</a>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingThree">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseThree">
                            Admin
                        </button>
                    </h2>
                    <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <a href="AdminAction.jsp" class="p-2 text-info">Admin Actions</a>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        <%-- Side Bar Ends --%>

        <div class="rightside p-5">
            <div class="container">
                <div class="row">
                    <div class="card col-5 offset-2">
                        <div class="card-header">
                            <h3 class="">Edit Admin Profile</h3>
                        </div>
                        <form class="card-body">
                            <input type="text" name="name" placeholder="Admin Name" class="form-control mb-1"/>
                            <input type="file" name="pic" class="form-control mb-1"/>
                            <input type="submit" value="Save" class="btn btn-primary"/>
                            
                        </form>
                        
                    </div>
                </div>
                
                <div class="row mt-2">
                    <div class="card col-5 offset-2">
                        <div class="card-header">
                            <h3 class="">Change Password</h3>
                        </div>
                         <form class="card-body">
                             <input type="password" name="old" placeholder="old password" class="form-control mb-1"/>
                             <input type="password" name="new" placeholder="new password"class="form-control mb-1"/>
                            <input type="submit" value="Change" class="btn btn-primary"/>
                            
                        </form>
                    </div>
                </div>
            </div>


        </div>



    </body>
</html>
