    <div style="margin-top: 9%" class="row">
        <div class="col-md-6 col-md-offset-3">
            <form action="/registration" method="post" class="form-horizontal"
                  role="form">
                <h2>Registration Form</h2>
                <div class="form-group">
                    <div class="col-sm-9">
                        <label class="validation-message"></label>
                        <input type="text" name="name" placeholder="Name" class="form-control"/>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-9">
                        <label class="validation-message"></label>
                        <input type="text" name="lastname" placeholder="Last Name" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-9">
                        <input type="text" name="email" placeholder="Email" class="form-control"/>
                        <label class="validation-message"></label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-9">
                        <input type="password" placeholder="Password" name="password" class="form-control"/>
                        <label class="validation-message"></label>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-9">
                        <button type="submit" class="btn btn-primary btn-block">Register User</button>
                    </div>
                </div>

                <div class="col-sm-9 alert alert-success alert-dismissible" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <span style="">${successMessage}</span>
                </div>

                <div  class="col-sm-9 alert alert-danger alert-dismissible" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <span style=""${errorMessage}></span>
                </div>

            </form>
        </div>
    </div>

