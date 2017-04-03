<%-- 
    Document   : index
    Created on : Apr 3, 2017, 1:22:05 PM
    Author     : edwin < edwinkun at gmail dot com >
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JWP pertemuan 03</title>
    </head>
    <body>
        <h1>Hari Ini Akan Belajar Send Forward dan Send Redirect</h1>
        <div>
            <form method="POST" action="/JWP03/ActionServlet">
                <table>
                    <tr>
                        <td colspan="2">Coba login, jika berhasil akan forward ke halaman baru, jika gagal maka akan redirect ke halaman lain. Username yg benar : admin, password : admin.</td>
                    </tr>
                    <tr>
                        <td>Masukkan nama</td>
                        <td><input type="text" name="nama"></td>
                    </tr>
                    <tr>
                        <td>Masukkan password</td>
                        <td><input type="password" name="password"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="simpan"></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>