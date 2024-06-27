<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="styles.css"> <!-- Estilos adicionales -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script> <!-- Librer�a Chart.js -->
    <style>
        /* Estilos adicionales espec�ficos del dashboard */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }
        .dashboard-container {
            display: flex;
            height: 100vh;
        }
        .sidebar {
            width: 300px; /* Aumentamos el ancho del men� lateral */
            background-color: #333;
            color: #fff;
            padding: 20px;
            box-sizing: border-box;
        }
        .sidebar h2 {
            margin-top: 0;
            font-size: 28px; /* Aumentamos el tama�o del t�tulo del men� */
        }
        .sidebar ul {
            list-style-type: none;
            padding: 0;
        }
        .sidebar li {
            margin-bottom: 15px; /* Incrementamos el espaciado entre elementos del men� */
        }
        .sidebar a {
            color: #fff;
            text-decoration: none;
            font-size: 20px; /* Aumentamos el tama�o del texto del men� */
        }
        .sidebar a:hover {
            text-decoration: underline;
        }
        .main-content {
            flex: 1;
            padding: 20px;
            box-sizing: border-box;
        }
        .main-content h1 {
            font-size: 32px;
            margin-bottom: 20px;
        }
        .main-content .cards {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        .card {
            width: calc(33.33% - 20px);
            background-color: #fff;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        .card:hover {
            transform: translateY(-5px);
        }
        .card h3 {
            font-size: 24px;
            margin-top: 0;
        }
        .card p {
            margin-top: 10px;
            font-size: 16px;
            color: #666;
        }
        .chart-container {
            background-color: #fff;
            padding: 20px;
            margin-top: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px; /* Reducimos el ancho m�ximo de la gr�fica */
            margin-left: auto; /* Alineamos la gr�fica a la derecha */
            margin-right: auto;
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <!-- Sidebar -->
        <div class="sidebar">
            <h2>Dashboard</h2>
            <ul>
                <li><a href="#">Inicio</a></li>
                <li><a href="#">Usuarios</a></li>
                <li><a href="#">Profesores</a></li>
                <li><a href="#">Reportes</a></li>
                <li><a href="#">Configuraci�n</a></li>
                <li><a href="#">Cerrar Sesi�n</a></li>
            </ul>
        </div>
        
        <!-- Main Content -->
        <div class="main-content">
            <h1>Bienvenido al Dashboard</h1>
            
            <div class="cards">
                <div class="card">
                    <h3>Total de Alumnos</h3>
                    <p>50</p>
                </div>
                <div class="card">
                    <h3>Total de Profesores</h3>
                    <p>150</p>
                </div>
                <div class="card">
                    <h3>�ltimas Actividades</h3>
                    <p>�ltima actualizaci�n: hace 1 hora</p>
                </div>
            </div>
            
            <!-- Gr�fica de Alumnos por Carreras -->
            <div class="chart-container">
                <canvas id="alumnosPorCarrera"></canvas>
            </div>
        </div>
    </div>

    <!-- Script para la gr�fica -->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var ctx = document.getElementById('alumnosPorCarrera').getContext('2d');
            var chart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ['Civil', 'Software', 'Sistemas'],
                    datasets: [{
                        label: 'Cantidad de Alumnos por Carrera',
                        data: [100, 250, 200], // Datos de ejemplo
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.6)',
                            'rgba(54, 162, 235, 0.6)',
                            'rgba(255, 206, 86, 0.6)'
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)'
                        ],
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        });
    </script>
</body>
</html>
