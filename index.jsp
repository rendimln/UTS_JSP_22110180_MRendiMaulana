<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, model.Film" %>
<%
    ArrayList<Film> daftarFilm = new ArrayList<>();
    daftarFilm.add(new Film(
        "Avengers: Endgame",
        "Action, Sci-Fi",
        "3h 2m",
        55000,
        new String[]{"10:00", "13:00", "18:00"},
        "https://upload.wikimedia.org/wikipedia/en/0/0d/Avengers_Endgame_poster.jpg"
    ));
    daftarFilm.add(new Film(
        "Interstellar",
        "Sci-Fi, Drama",
        "2h 49m",
        60000,
        new String[]{"09:00", "14:00", "20:00"},
        "https://upload.wikimedia.org/wikipedia/en/b/bc/Interstellar_film_poster.jpg"
    ));
    daftarFilm.add(new Film(
        "Coco",
        "Animation, Adventure",
        "1h 45m",
        45000,
        new String[]{"11:00", "15:00", "19:00"},
        "https://upload.wikimedia.org/wikipedia/en/9/98/Coco_%282017_film%29_poster.jpg"
    ));
    daftarFilm.add(new Film(
        "Joker",
        "Crime, Drama",
        "2h 2m",
        50000,
        new String[]{"12:00", "17:00", "21:00"},
        "https://upload.wikimedia.org/wikipedia/en/e/e1/Joker_%282019_film%29_poster.jpg"
    ));
    daftarFilm.add(new Film(
        "Spider-Man: No Way Home",
        "Action, Adventure",
        "2h 28m",
        58000,
        new String[]{"10:30", "13:30", "16:30", "20:00"},
        "https://upload.wikimedia.org/wikipedia/en/0/00/Spider-Man_No_Way_Home_poster.jpg"
    ));
    session.setAttribute("daftarFilm", daftarFilm);
%>
<!DOCTYPE html>
<html>
<head>
    <title>Daftar Film</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #121212;
            color: #f5f5f5;
        }
        .card {
            background-color: #1f1f1f;
            color: #fff;
            border: 1px solid #333;
        }
        .card-img-top {
            height: 400px;
            object-fit: cover;
        }
        .btn-primary {
            background-color: #3b82f6;
            border-color: #3b82f6;
        }
        .btn-primary:hover {
            background-color: #2563eb;
            border-color: #2563eb;
        }
        h2 {
            color: #ffffff;
        }
    </style>
</head>
<body class="container mt-5">
    <h2 class="mb-4 text-center">🎬 Daftar Film </h2>
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <% for (Film f : daftarFilm) { %>
        <div class="col">
            <div class="card h-100 shadow">
                <img src="<%= f.getGambar() %>" class="card-img-top" alt="Poster <%= f.getJudul() %>">
                <div class="card-body">
                    <h5 class="card-title"><%= f.getJudul() %></h5>
                    <p class="card-text">
                        <strong>Genre:</strong> <%= f.getGenre() %><br>
                        <strong>Durasi:</strong> <%= f.getDurasi() %><br>
                        <strong>Harga:</strong> Rp<%= f.getHarga() %><br>
                        <strong>Jam Tayang:</strong> <%= String.join(", ", f.getJamTayang()) %>
                    </p>
                    <a href="formPesan.jsp" class="btn btn-primary w-100">Pesan Tiket</a>
                </div>
            </div>
        </div>
        <% } %>
    </div>
</body>
</html>
