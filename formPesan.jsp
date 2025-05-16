<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, model.Film" %>
<%
    ArrayList<Film> daftarFilm = (ArrayList<Film>) session.getAttribute("daftarFilm");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Form Pemesanan</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #121212;
            color: #e0e0e0;
        }
        .form-container {
            background-color: #1e1e1e;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.5);
        }
        .form-label, .form-control, .form-select {
            color: #fff;
            background-color: #2a2a2a;
            border-color: #444;
        }
        .form-control:focus, .form-select:focus {
            background-color: #333;
            border-color: #666;
            color: #fff;
        }
        h2 {
            color: #ffffff;
        }
        .btn-success {
            background-color: #4caf50;
            border-color: #4caf50;
        }
        .btn-success:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body class="container mt-5">
    <h2 class="mb-4 text-center">Form Pemesanan Tiket</h2>
    <form action="struk.jsp" method="post" class="form-container">
        <div class="mb-3">
            <label class="form-label">Nama:</label>
            <input type="text" name="nama" class="form-control" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Film:</label>
            <select name="filmIndex" class="form-select">
                <% for (int i = 0; i < daftarFilm.size(); i++) { %>
                    <option value="<%= i %>"><%= daftarFilm.get(i).getJudul() %></option>
                <% } %>
            </select>
        </div>
        <div class="mb-3">
            <label class="form-label">Jam Tayang:</label>
            <select name="jamTayang" class="form-select">
                <option value="10:00">10:00</option>
                <option value="13:00">13:00</option>
                <option value="16:00">16:00</option>
                <option value="17:00">17:00</option>
            </select>
        </div>
        <div class="mb-3">
            <label class="form-label">Jumlah Tiket:</label>
            <input type="number" name="jumlah" class="form-control" min="1" required>
        </div>
        <button type="submit" class="btn btn-success w-100">Cetak Struk</button>
    </form>
</body>
</html>
