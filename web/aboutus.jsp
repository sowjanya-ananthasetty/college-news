<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About Us - College</title>

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Segoe UI', sans-serif;
    }

    body {
        line-height: 1.6;
        color: #333;
    }

    /* Hero Section */
    .hero {
        background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('images/bg.jpeg') center/cover no-repeat;
        height: 60vh;
        display: flex;
        align-items: center;
        justify-content: center;
        color: #fff;
        text-align: center;
        padding: 20px;
    }

    .hero h1 {
        font-size: 3rem;
    }

    .hero p {
        margin-top: 10px;
        font-size: 1.2rem;
    }

    /* Container */
    .container {
        width: 90%;
        max-width: 1100px;
        margin: auto;
        padding: 40px 0;
    }

    /* Section Titles */
    .section-title {
        text-align: center;
        margin-bottom: 30px;
    }

    .section-title h2 {
        font-size: 2rem;
        color: #004080;
    }

    /* About Content */
    .about-content {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 30px;
        align-items: center;
    }

    .about-content img {
        width: 100%;
        border-radius: 10px;
    }

    /* Cards */
    .cards {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 20px;
        margin-top: 30px;
    }

    .card {
        background: #f4f4f4;
        padding: 20px;
        border-radius: 10px;
        text-align: center;
        transition: 0.3s;
    }

    .card:hover {
        background: #004080;
        color: #fff;
        transform: translateY(-5px);
    }

    /* Footer */
    footer {
        background: #004080;
        color: #fff;
        text-align: center;
        padding: 15px;
    }

    /* Responsive */
    @media(max-width: 768px) {
        .hero h1 {
            font-size: 2rem;
        }

        .about-content {
            grid-template-columns: 1fr;
        }

        .cards {
            grid-template-columns: 1fr;
        }
    }
</style>

</head>

<body>

<!-- Hero Section -->
<section class="hero">
    <div>
        <h1>About Our College</h1>
        <p>Empowering Students for a Brighter Future</p>
    </div>
</section>

<!-- About Section -->
<section class="container">
    <div class="section-title">
        <h2>Who We Are</h2>
    </div>

    <div class="about-content">
        <img src="images/bg.webp" alt="College Campus">
        <p align="justify">
            Narayana Educational Institutions are one of the best education providers in India from the Pre-primary to professional post graduation. Narayana Educational Group was established by renowned educationalist Dr P Narayana, 44 years ago.  Today, the Narayana Educational Institutions stand tall and proud for setting path breaking benchmarks in academic excellence. Four decades of experience in fulfilling the aspirations of India's students has given us conviction and confidence to aim higher and bigger always. 
        </p>
    </div>
</section>

<!-- Mission / Vision / Values -->
<section class="container">
    <div class="section-title">
        <h2>Our Core Values</h2>
    </div>

    <div class="cards">
        <div class="card">
            <h3>Our Mission</h3>
            <p>To provide quality education and develop skilled professionals.</p>
        </div>

        <div class="card">
            <h3>Our Vision</h3>
            <p>To become a center of excellence in education and research.</p>
        </div>

        <div class="card">
            <h3>Our Values</h3>
            <p>Integrity, innovation, inclusivity, and lifelong learning.</p>
        </div>
    </div>
</section>

<!-- Footer -->
<footer>
    <p>&copy; 2026 Narayana Engineering College. All Rights Reserved.</p>
</footer>

</body>
</html>