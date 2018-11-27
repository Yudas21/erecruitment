    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand" href="#">E-Recruitment</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="index.html">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="about.html">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" data-toggle="modal" data-target="#sign">Sign In / Sign Up</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.html">Contact</a>
            </li>

          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Header -->
    <header class="masthead" style="background-image: url('rekrutment.jpg')">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <div class="site-heading">
              <!-- <h1>Clean Blog</h1>
              <span class="subheading">A Blog Theme by Start Bootstrap</span> -->
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- The Modal -->
<div class="modal fade" id="sign">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">E-Recruitment</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
      <ul class="nav nav-tabs">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#signIn">Sign In</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#signUp">Sign Up</a>
            </li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <div id="signIn" class="container tab-pane active"><br>
                <form action="" method="post">
                    <div class="form-group row">
                        <label class="col-md-3">Email</label>
                        <div class="col-md-9">
                            <input type="text" name="email" placeholder="Email" class="form-control" autocomplete="off">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-3">Password</label>
                        <div class="col-md-9">
                            <input type="password" name="password" placeholder="Password" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-3">&nbsp;</div>
                        <div class="col-md-9">
                            <button type="sumbit" class="btn btn-success">Enter</button>
                        </div>
                    </div>
                </form>
            </div>
            <div id="signUp" class="container tab-pane fade"><br>
                <form action="" method="post">
                    <div class="form-group row">
                        <label class="col-md-4">Full Name</label>
                        <div class="col-md-8">
                            <input type="text" name="nama_lengkap" placeholder="Full Name" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4">Nick Name</label>
                        <div class="col-md-8">
                            <input type="text" name="nama_pangilan" placeholder="Nick Name" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4">Email</label>
                        <div class="col-md-8">
                            <input type="text" name="email" placeholder="Email" class="form-control" autocomplete="off">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4">Password</label>
                        <div class="col-md-8">
                            <input type="password" name="password" placeholder="Password" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-4">Confirm Password</label>
                        <div class="col-md-8">
                            <input type="password" name="password" placeholder="Confirm Password" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-4">&nbsp;</div>
                        <div class="col-md-8">
                            <button type="sumbit" class="btn btn-success">Enter</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>