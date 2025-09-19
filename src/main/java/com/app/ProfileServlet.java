package com.app;

import com.model.Link;
import com.model.Profile;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProfileServlet", urlPatterns = {"/profile"})
public class ProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        // Tạo object Profile
        Profile me = new Profile(
                "Võ Phương Quỳnh",
                "Nội thần kinh",
                "Bệnh viện Đại học Y Dược TP.HCM.",
                List.of(
                        new Link("Orcid", "https://orcid.org/0009-0007-2142-2818",
                                "https://upload.wikimedia.org/wikipedia/commons/0/06/ORCID_iD.svg"),
                        new Link("ResearchGate", "https://www.researchgate.net/profile/Quynh-Vo-47",
                                "https://upload.wikimedia.org/wikipedia/commons/5/5e/ResearchGate_icon_SVG.svg"),
                        new Link("Facebook", "https://www.facebook.com/quynh.vo.1291",
                                "https://upload.wikimedia.org/wikipedia/commons/1/1b/Facebook_icon.svg"),
                        new Link("Blog", "https://your-blog.example.com",
                                "https://upload.wikimedia.org/wikipedia/commons/9/99/Blog_icon.svg")
                )
        );

        // Gửi sang JSP
        req.setAttribute("profile", me);

        // Forward đến file JSP trong folder Views
        req.getRequestDispatcher("/Views/Profile.jsp").forward(req, resp);
    }
}
