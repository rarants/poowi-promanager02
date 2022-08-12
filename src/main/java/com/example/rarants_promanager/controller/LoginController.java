package com.example.rarants_promanager.controller;

import com.example.rarants_promanager.dao.QuadrosDAO;
import com.example.rarants_promanager.dao.UsuarioDAO;
import com.example.rarants_promanager.model.Quadro;
import com.example.rarants_promanager.model.Usuario;
import com.example.rarants_promanager.service.QuadroService;
import com.example.rarants_promanager.service.UsuarioService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.ArrayList;

@Controller
@RequestMapping("/login")
public class LoginController {
    @GetMapping("")
    public String login(Model model) {
        model.addAttribute("usuario", new Usuario());
        return "login";
    }

    @GetMapping("/cadastrar")
    public String cadastrar(Model model) {
        model.addAttribute("usuario", new Usuario());
        return "cadastrar";
    }

    @RequestMapping("/sign-in")
    public RedirectView login(HttpSession session, @ModelAttribute("usuario") Usuario usuario, Model model) {
        RedirectView redirect = null;
        try {
            usuario = new UsuarioService().autenticado(usuario.getEmail(), usuario.getSenha());
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        if (usuario != null) {
            model.addAttribute("usuario", usuario);
            session.setAttribute("usuario_logado", usuario);
            redirect = new RedirectView("/usuario/dashboard", true);
        } else {
            model.addAttribute("error", "Usuário e/ou senha incorretos!");
            redirect = new RedirectView("/login", true);
        }
        return redirect;
    }

    @RequestMapping("/sign-out")
    public RedirectView logout(HttpSession session, Model model) {
        session.invalidate();
        model.addAttribute("usuario", new Usuario());
        return new RedirectView("/login", true);
    }
    @PostMapping("/register")
    public RedirectView post(@ModelAttribute("usuario") Usuario usuario, RedirectAttributes attributes) {
        boolean registered = false;
        String url = "/login/register";
        try {
            UsuarioDAO dao = new UsuarioDAO();
            registered = dao.postUsuario(usuario);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        if (registered == true) {
            url = "/login";
        } else {
            attributes.addAttribute("error", "Erro ao cadastrar o quadro!");
        }
        RedirectView redirect = new RedirectView(url, true);
        return redirect;
    }

}
