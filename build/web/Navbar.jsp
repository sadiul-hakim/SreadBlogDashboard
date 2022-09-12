
<nav class="navbar navbar-expand-lg bg-white">
    <div class="container-fluid">
        <a class="navbar-brand text-primary" href="index.jsp"><span class="fa fa-graduation-cap"> Spread Dashboard</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>


        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        <img src="<%= admin.getPic()%>" width="20px" height="20px" style="border-radius: 50%"/>
                        <%= admin.getName()%>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
                    
                    
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Admin Profile</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
          <img src="<%= admin.getPic()%>" width="70px" height="70px"/>
          <h3><%= admin.getName()%></h3>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <a type="button" class="btn btn-primary" href="LogoutServlet">Logout</a>
      </div>
    </div>
  </div>
</div>
