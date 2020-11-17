<?php
// koneksi
$conn = mysqli_connect("localhost", "root", "", "webgis");

function registrasi($data) {
	global $conn;

	$username = strtolower(stripslashes($data["username"]));
	$password = mysqli_real_escape_string($conn, $data["password"]);
	$password2 = mysqli_real_escape_string($conn, $data["password2"]);

	// cek username
	$result = mysqli_query($conn, "SELECT username FROM users WHERE username = '$username'");
	
	if (mysqli_fetch_assoc($result) ){
		echo "<script>
		alert('Username Sudah Terdaftar!')
		</script>";
		return false;
	}

	//cek konfirmasi password
	if( $password !== $password2 ) {
		echo "<script>
		alert('Password tidak sesuai!');
		</script>";
	 return false;	
	}

	//enkripsi
	$password = password_hash($password, PASSWORD_DEFAULT);

	//insert to db
	mysqli_query($conn, "INSERT INTO users VALUES('', '$username', '$password')");

	return mysqli_affected_rows($conn);
}
?>
