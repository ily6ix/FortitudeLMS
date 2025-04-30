<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard – Fortitude LMS</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
        }
        .sidebar {
            height: 100vh;
            position: fixed;
            left: 0;
            top: 0;
            width: 240px;
            background-color: #343a40;
            color: white;
            padding-top: 20px;
        }
        .sidebar a {
            color: #ddd;
            text-decoration: none;
            display: block;
            padding: 12px 20px;
        }
        .sidebar a:hover,
        .sidebar a.active {
            background-color: #495057;
            color: white;
        }
        .content {
            margin-left: 240px;
            padding: 30px;
        }
        .header {
            border-bottom: 1px solid #ccc;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <h4 class="text-center text-white mb-4">Admin Portal</h4>
    <a href="admin-dashboard.jsp" class="active">🏠 Dashboard</a>
    <a href="applications.jsp">📄 Applications</a>
    <a href="students.jsp">👤 Students</a>
    <a href="application-status.jsp">📊 Application Status</a>
    <a href="blog-post.jsp">📝 Write Blog Post</a>
    <a href="notifications.jsp">🔔 Notifications</a>
    <a href="roles.jsp">🛠 Role Management</a>
    <a href="activity-logs.jsp">📁 Activity Logs</a>
    <a href="logout.jsp">🚪 Logout</a>
</div>

<!-- Main Content -->
<div class="content">
    <div class="header d-flex justify-content-between align-items-center">
        <h2>Dashboard Overview</h2>
        <!-- Example toggle button for controlling public Apply button -->
        <form method="post" action="toggle-apply.jsp">
            <button type="submit" class="btn btn-outline-danger btn-sm">
                Toggle Applications Open/Closed
            </button>
        </form>
    </div>

    <!-- Example dashboard stats -->
    <div class="row g-4">
        <div class="col-md-4">
            <div class="card text-white bg-primary">
                <div class="card-body">
                    <h5 class="card-title">Total Applications</h5>
                    <p class="card-text fs-4">
                        <%-- Replace with dynamic value --%>
                        <%= request.getAttribute("totalApplications") != null ? request.getAttribute("totalApplications") : "127" %>
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card text-white bg-success">
                <div class="card-body">
                    <h5 class="card-title">Applications by Grade</h5>
                    <p class="card-text">
                        Grade 8: 40, Grade 9: 30, Grade 10+: 57
                        <%-- Replace with dynamic values as needed --%>
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card text-white bg-info">
                <div class="card-body">
                    <h5 class="card-title">Recent Activity</h5>
                    <p class="card-text">4 new applications today</p>
                </div>
            </div>
        </div>
    </div>

    <hr class="my-4"/>

    <h4>Quick Actions</h4>
    <div class="row g-3">
        <div class="col-md-3"><a href="applications.jsp" class="btn btn-outline-primary w-100">Review Applications</a></div>
        <div class="col-md-3"><a href="students.jsp" class="btn btn-outline-success w-100">Manage Students</a></div>
        <div class="col-md-3"><a href="blog-post.jsp" class="btn btn-outline-warning w-100">Blog Posts</a></div>
        <div class="col-md-3"><a href="roles.jsp" class="btn btn-outline-dark w-100">Configure Roles</a></div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
