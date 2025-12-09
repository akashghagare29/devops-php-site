<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>DevOps Learning — Home</title>
    <!-- Bootstrap 5 via CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="/">DevOps-Learn</a>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="/">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="/about.php">About</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <main class="container py-5">
        <div class="p-4 bg-white rounded shadow-sm">
            <h1>Welcome to DevOps Learning</h1>
            <p class="lead">A tiny PHP site to demonstrate CI/CD, Docker, and Kubernetes (EKS).</p>

            <h4>What this demo covers</h4>
            <ul>
                <li>Git source repo + Docker build</li>
                <li>Push image to Amazon ECR</li>
                <li>Deploy container to an EKS Kubernetes cluster</li>
                <li>Automated pipeline via GitHub Actions</li>
            </ul>

            <a href="/about.php" class="btn btn-primary mt-3">Learn more</a>
        </div>
    </main>

    <footer class="text-center py-3">
        <small>© <?= date('Y') ?> DevOps-Learn</small>
    </footer>

</body>

</html>