package br.cesjf.lppo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "EditaRegistro", urlPatterns = {"/edita.html"})
public class EditaRegistro extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Pessoa pessoa = new Pessoa();
        Long id = Long.parseLong(request.getParameter("id"));

        try {
            //Pegar os dados do banco
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conexao = DriverManager.getConnection("jdbc:derby://localhost:1527/lppo-2017-1", "usuario", "senha");
            Statement operacao = conexao.createStatement();
            ResultSet resultado = operacao.executeQuery("SELECT * FROM reclamacao WHERE id=" + id);
            if (resultado.next()) {
                pessoa = new Pessoa();
                pessoa.setId(resultado.getLong("id"));
                pessoa.setNome(resultado.getString("nome"));
                pessoa.setEmail(resultado.getString("email"));
                pessoa.setDescricao(resultado.getString("descricao"));
                pessoa.setStatus(resultado.getInt("status"));
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ListaRegistrosServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ListaRegistrosServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        request.setAttribute("pessoa", pessoa);
        request.getRequestDispatcher("WEB-INF/edita-registro.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
      //  int status = Integer.parseInt(request.getParameter("status"));
        Pessoa pessoa = new Pessoa();
        pessoa.setId(Long.parseLong(request.getParameter("id")));
        pessoa.setNome(request.getParameter("nome"));
        pessoa.setEmail(request.getParameter("email"));
        pessoa.setDescricao(request.getParameter("descricao"));
       // contato.setStatus(status);//request.getParameter("status"));
       pessoa.setStatus(Integer.parseInt(request.getParameter("status")));

        try {
            //Pegar os dados do banco
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conexao = DriverManager.getConnection("jdbc:derby://localhost:1527/lppo-2017-1", "usuario", "senha");
            Statement operacao = conexao.createStatement();
            operacao.executeUpdate("UPDATE reclamacao SET nome='"
                    + pessoa.getNome() + "', email='"
                    + pessoa.getEmail() + "', descricao='"
                    + pessoa.getDescricao() + "',status="
                    + pessoa.getStatus()
                    + " WHERE id=" + pessoa.getId());

            //UPDATE reclamacao SET nome='', email=',descricao='', status= WHERE id=1;
            /*
   
   nome='" +contato.getNome()+ "', "
                    + "email='" +contato.getEmail()+ "',"
                    + " descricao='"+contato.getDescricao()+ "'"
                    + " status="+contato.getStatus()+ ""
                    + " WHERE id="+contato.getId());
             */
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ListaRegistrosServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ListaRegistrosServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        response.sendRedirect("lista.html"); //redirecionar para o servlet ListaRegistrosServlet
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
