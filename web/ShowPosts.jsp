<%-- 
    Document   : index
    Created on : Sep 9, 2022, 2:01:42 PM
    Author     : ACT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.hakim.dao.ServerCall" %>
<%@page import="com.hakim.entities.Post" %>
<%@page import="com.hakim.db.ConnectionProvider" %>
<%@page import="java.util.List" %>

<%
    List<Post> posts=ServerCall.getAllPosts(ConnectionProvider.getConnection());
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
                            <a href="" class="p-2 text-info ">Categories Actions</a>
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
                            <a href="" class="p-2 text-info">Admin Actions</a>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        <%-- Side Bar Ends --%>

        <div class="rightside">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Post Id</th>
                        <th scope="col">Category Id</th>
                        <th scope="col">Author Id</th>
                        <th scope="col">Title</th>
                        <th scope="col">Content</th>
                        <th scope="col">Code</th>
                        <th scope="col">Date Time</th>
                        <th scope="col">#</th>
                    </tr>
                </thead>
                <tbody>
                    <%for(Post u:posts){%>
                    <tr>
                        <td><%= u.getPid()%></td>
                        <td><%= u.getCid()%></td>
                        <td><%= u.getId()%></td>
                        <td><%= u.getTitle()%></td>
                        <td><%= u.getContent()%></td>
                        <td><%= u.getCode()%></td>
                        <td><%= u.getPost_date()%></td>
                        <td><a href="DeletePostServlet?id=<%= u.getPid()%>">Delete</a></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>



    </body>
</html>
