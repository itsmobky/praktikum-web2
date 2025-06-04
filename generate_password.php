<?php
$password_plain = "admin";
$hashed_password = password_hash($password_plain, PASSWORD_DEFAULT);
echo "Password hash: " . $hashed_password;
