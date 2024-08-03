<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
    <h2>Login Page</h2>
    <form action="validate.jsp" method="post">
        User ID: <input type="text" name="user_id"><br>
        Password: <input type="password" name="password"><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>

<!--
CREATE DATABASE userdb;
USE userdb;
CREATE TABLE users (
user_id VARCHAR(50) PRIMARY KEY,
password VARCHAR(50)
);
Insert a sample user:
INSERT INTO users (user_id, password) VALUES ('testuser', 'testpassword');
-->

