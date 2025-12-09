<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>DevOps Learning — About</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container">
    <a class="navbar-brand" href="/">DevOps-Learn</a>
  </div>
</nav>

<main class="container py-5">
  <div class="p-4 bg-white rounded shadow-sm">
    <h2>About this demo</h2>
    <p>This small app is intended to show a minimal realistic workflow used in companies:</p>
    <ol>
      <li>Code stored in Git (GitHub)</li>
      <li>Docker image built and pushed to ECR</li>
      <li>GitHub Actions triggers on push to main and updates the K8s deployment</li>
      <li>Runs on AWS EKS (managed Kubernetes)</li>
    </ol>

    <h5>Useful tips</h5>
    <ul>
      <li>Use multi-stage builds for larger projects.</li>
      <li>Use image tags that are immutable (sha-based) in production.</li>
      <li>Enable healthProbes (readiness/liveness) for reliability (small demo omitted).</li>
    </ul>
  </div>
</main>
</body>
</html>
