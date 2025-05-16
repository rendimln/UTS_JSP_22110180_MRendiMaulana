<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, model.Film" %>
<%
    String nama = request.getParameter("nama");
    int index = Integer.parseInt(request.getParameter("filmIndex"));
    String jam = request.getParameter("jamTayang");
    int jumlah = Integer.parseInt(request.getParameter("jumlah"));

    ArrayList<Film> daftarFilm = (ArrayList<Film>) session.getAttribute("daftarFilm");
    Film film = daftarFilm.get(index);
    int total = jumlah * film.getHarga();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Struk Pemesanan</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #121212;
            color: #e0e0e0;
            font-family: 'Courier New', Courier, monospace;
        }
        .struk-container {
            max-width: 600px;
            margin: 3rem auto;
            background-color: #1e1e1e;
            border: 1px dashed #555;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(255,255,255,0.05);
        }
        h3 {
            color: #00c853;
            text-align: center;
            margin-bottom: 1.5rem;
        }
        .struk-item {
            margin-bottom: 0.8rem;
        }
        .struk-item strong {
            color: #bdbdbd;
            display: inline-block;
            width: 140px;
        }
        .btn-kembali {
            display: block;
            width: 100%;
            margin-top: 2rem;
            background-color: #00c853;
            border: none;
            color: #fff;
            padding: 10px;
            border-radius: 5px;
            text-align: center;
            font-weight: bold;
            transition: background 0.3s;
            text-decoration: none;
        }
        .btn-kembali:hover {
            background-color: #00b44b;
        }
    </style>
</head>
<body>
    <div class="struk-container">
        <h3>🎟️ Struk Pemesanan</h3>
        <div class="struk-item"><strong>Nama:</strong> <%= nama %></div>
        <div class="struk-item"><strong>Film:</strong> <%= film.getJudul() %></div>
        <div class="struk-item"><strong>Jam Tayang:</strong> <%= jam %></div>
        <div class="struk-item"><strong>Jumlah Tiket:</strong> <%= jumlah %></div>
        <div class="struk-item"><strong>Total Bayar:</strong> Rp<%= total %></div>

        <a href="index.jsp" class="btn-kembali">⬅ Kembali ke Daftar Film</a>
    </div>
</body>
</html>
