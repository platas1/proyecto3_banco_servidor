<%-- 
    Document   : index
    Created on : 07-oct-2013, 10:31:52
    Author     : alumno
--%>



<%@page import="com.fpmislata.daw2.datos.EntidadBancariaDAOImplHibernate"%>

<%@page import="java.util.List"%>
<%@page import="com.fpmislata.daw2.datos.EntidadBancariaDAO"%>
<%@page import="com.fpmislata.daw2.modelo.EntidadBancaria"%>
<%
    EntidadBancariaDAO endidadBancariaDao = new EntidadBancariaDAOImplHibernate();

    List<EntidadBancaria> listaEntidades = endidadBancariaDao.findAll();
%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href='css/bootstrap.css' media='all'>
        <link rel='stylesheet' href='css/bootstrap-responsive.css' media='all'>
        <link rel='stylesheet' href='css/estilogeneral.css' media='all'>
        <script src='js/bootstrap.js'></script>
        <script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js'></script>

        <title>JSP Page</title>
        
    </head>
    <body>

        <table  class="table table-striped"  >
            <thead>
                <tr>
                    <td>id</td>
                    <td>Nombre</td>
                    <td>Codigo</td>
                    <td>Cif</td>
                    <td>Tipo</td>
                </tr>  
            </thead>
            <%

                for (EntidadBancaria entidad : listaEntidades) {
                    out.println("<tr class='success'>");
                    out.println("<td>" + entidad.getIdEntidad() + "</td>");
                    out.println("<td>" + entidad.getNombre() + "<a href='borrar.jsp?idEntidadBancaria="+entidad.getIdEntidad()+"'>   Borrar   </a> <a href='formEditar.jsp?idEntidadBancaria="+entidad.getIdEntidad()+"'>   Editar   </a> </td>");
                    out.println("<td>" + entidad.getCodigoEntidad() + "</td>");
                    out.println("<td>" + entidad.getCif() + "</td>");
                    out.println("<td>" + entidad.getTipoEntidadBancaria().name() + "</td>");
                    out.println("</tr>");

                }





            %>
        </table>
        <a href="formAnyadir.jsp">Anyadir entidad</a>
    </body>
</html>
