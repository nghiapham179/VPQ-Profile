<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8" />
    <title>My Profile</title>

    <!-- Font & favicon -->
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="icon" href="${pageContext.request.contextPath}/Asset/favicon.png" />

    <!-- Cache-busting CSS: tăng v=2 khi bạn chỉnh CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Asset/Style.css?v=2">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Hồ sơ học thuật và liên kết của ${profile.fullName}" />
</head>
<body>
<div class="container">
    <div class="card">
        <img class="avatar"
             src="https://avatars.githubusercontent.com/u/0?v=4"
             alt="Ảnh đại diện của ${profile.fullName}" loading="lazy" />
        <h1>${profile.fullName}</h1>
        <h2>${profile.headline}</h2>
        <p class="bio">${profile.bio}</p>

        <h3>🌐 Liên kết</h3>
        <ul class="links">
            <c:forEach var="l" items="${profile.links}">
                <li>
                    <a class="btn-link" target="_blank" rel="noopener noreferrer" href="${l.url}">
                        <img src="${l.icon}" alt="" class="link-icon" aria-hidden="true" />
                            ${l.label}
                    </a>
                </li>
            </c:forEach>
        </ul>
    </div>
</div>
</body>
</html>
