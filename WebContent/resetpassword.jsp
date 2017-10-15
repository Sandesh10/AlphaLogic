<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reset Password</title>
</head>
<body>
	<form action="forgotPassword" method="post" class="form floating-label">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="username" name="username">
                                            <label for="username">Email</label>
                                        </div>
                                        <br/>
                                        <div class="row">
                                            <div class="col-xs-6 text-right">
                                                <button class="btn btn-primary btn-raised" type="submit">Reset Password</button>
                                            </div>
                                            <!--end .col -->
                                        </div>
                                        <!--end .row -->
                                    </form>

</body>
</html>