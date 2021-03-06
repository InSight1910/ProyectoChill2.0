package cl.RECLAMOS.Reclamos.API;


import cl.RECLAMOS.Reclamos.JDBC.DAO.UsuarioDAO;
import cl.RECLAMOS.Reclamos.JDBC.DTO.Reclamos;
import cl.RECLAMOS.Reclamos.JDBC.DTO.SendEmailService;
import cl.RECLAMOS.Reclamos.JDBC.DTO.Usuario;
import com.sun.mail.smtp.SMTPAddressFailedException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;


import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

@RestController
@RequestMapping("/")
@CrossOrigin(origins = "*", maxAge = 3600)
public class UsuarioResource {
    //Metodo MAIL
    @Autowired
    private SendEmailService sendEmailService;

    //Metodo GET
    @RequestMapping(method = RequestMethod.GET, value = "usuarios/{rut}")
    public List<Usuario> getUsuarios (@PathVariable("rut") String rut) throws SQLException {
        List<Usuario> user = new UsuarioDAO().obtenerUserPorRut(rut);
        return user;
    }

    @RequestMapping(method = RequestMethod.GET, value = "obtenerCorreo/{rut}")
    public String getCorreoPorRut(@PathVariable("rut") String rut) throws SQLException {
        return new UsuarioDAO().obtenerCorreoPorRut(rut);
    }

    //Metodo PUT
    @RequestMapping(method = RequestMethod.PUT, value = "editarUsuario")
    public void modifificarUsuario(@RequestBody Usuario a) throws SQLException {
        new UsuarioDAO().modificar(a);
    }
    @RequestMapping(method = RequestMethod.PUT, value = "/usuario/editarContraseña")
    public void editarContraseña(@RequestBody Usuario c) throws SQLException, IOException {
        if (new UsuarioDAO().CorreoExiste(c.getCorreo())){
            new UsuarioDAO().editarContraseña(c);
        }else {
            System.out.println("No existe");
            HttpServletResponse response = null;
            response.sendError(500);
        }

    }

    //Metodo DELETE
    @RequestMapping(method = RequestMethod.DELETE, value = "borrarUser/{rut}")
    public void borrarUsuario(@PathVariable("rut") String rut) throws SQLException {
        new UsuarioDAO().borrarUser(rut);

    }

    @RequestMapping(method = RequestMethod.DELETE, value = "borrarUserCorreo/{correo}")
    public void borrarUsuarioCorreo(@PathVariable("correo") String correo) throws SQLException {

        new UsuarioDAO().borrarUserPorCorreo(correo);
        String body = "¡Hola! \n Este es el último mail que te enviaremos, solo queriamos confirmarte que ya te hemos dado de baja en Reclamos Chile. \n" +
                "toda tu información y datos de acceso han sido borrados permanentemente de nuestros sistemas.  \n" +
                "Nos da mucha pena que te vayas :(, si deseas volver a usar Reclamos Chile, te estaremos esperando con los brazos abiertos. \n" +
                "Un abrazo, \n" +
                "El equipo de Reclamos Chile";
        sendEmailService.sendEmail("reclamos.chile.solutions@gmail.com", correo, "¡Hasta luego!", body);
    }

    //Metodo POST
    @RequestMapping(method = RequestMethod.POST, value = "registrar")
    public void crearUsuario(@RequestBody Usuario u) throws SQLException {
        new UsuarioDAO().crearUsuario(u);
        String correoUser = new UsuarioDAO().obtenerCorreoPorRut(u.getRut());
        String body = "Sr.(a) " + u.getNombre() + "\nSu cuenta ha sido creada exitosamente.\nEsperamos ser de mucha ayuda para usted." +
                "\n\nAtentamente el equipo de ReclamosChile.";

        sendEmailService.sendEmail("reclamos.chile.solutions@gmail.com", correoUser, "Registro ReclamosChile", body);
    }

    @RequestMapping(method = RequestMethod.POST, value = "loginAdmin")
    public Usuario loginAdmin(@RequestBody Usuario u) throws SQLException {
        return new UsuarioDAO().loginAdmin(u);
    }

    @RequestMapping(method = RequestMethod.POST, value = "loginUsuario")
    public Usuario loginUsuario(@RequestBody Usuario a) throws SQLException {
        return new UsuarioDAO().loginUsuario(a);
    }


}
