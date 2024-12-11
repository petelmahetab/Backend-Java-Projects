<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOC TYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Secure Access</title>
    <link rel="stylesheet" href="login.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>

</head>
<body>

<h2>👋 Welcome Back! Please Log In</h2>

<form action="LoginServlet" method="POST">
    <label for="username">🧑‍💻 Username:</label>
    <input type="text" id="username" name="username" required placeholder="Enter your username" /><br><br>

    <label for="password">🔐 Password:</label>
    <input type="password" id="password" name="password" required placeholder="Enter your password" /><br><br>

    <button type="submit">Login 🚪</button>
</form>

<p>🔑 New here? <a href="register.jsp">📝 Register now</a></p>

<script>

    gsap.from("body", {
        duration: 1.5,
        opacity: 0,
        ease: "power2.out"
    });

    // For heading
    gsap.from("h2", {
        duration: 1.5,
        y: -50,
        opacity: 0,
        ease: "bounce.out"
    });

    // For form Animation
    gsap.from("form", {
        duration: 1.2,
        scale: 0.8,
        opacity: 0,
        ease: "elastic.out(1, 0.5)"
    });

    // Animate input fields
    gsap.from("input", {
        duration: 1,
        y: 50,
        opacity: 0,
        stagger: 0.3,
        ease: "power2.out"
    });

    // Animate button
    gsap.from("button", {
        duration: 1,
        scale: 0.8,
        opacity: 0,
        delay: 0.5,
        ease: "back.out(1.7)"
    });

    // Animate footer link
    gsap.from("p", {
        duration: 1,
        y: 20,
        opacity: 0,
        delay: 1,
        ease: "power2.out"
    });
</script>

</body>
</html>
