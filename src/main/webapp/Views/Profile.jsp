<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="ngrok-skip-browser-warning" content="true">

    <title>My Profile</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Asset/Style.css">
</head>
<body>

<div class="container">
    <div class="card">
        <img class="avatar" src="${pageContext.request.contextPath}/image/quynh.png" alt="avatar"/>

        <h2>${profile.headline}</h2>
        <p class="bio">${profile.bio}</p>

        <h3>🌐 Liên kết</h3>
        <ul class="links">
            <c:forEach var="l" items="${profile.links}">
                <li>
                    <a class="btn-link" target="_blank" href="${l.url}">
                        <img src="${l.icon}" alt="${l.label}" class="link-icon"/>
                            ${l.label}
                    </a>
                </li>
            </c:forEach>
        </ul>
    </div>
</div>
</body>
</html>
