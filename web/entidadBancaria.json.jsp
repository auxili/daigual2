<%@page import="com.fpmislata.banco.datos.EntidadBancariaDAOImpHibernate"%><%@page import="com.fpmislata.banco.datos.EntidadBancariaDAO"%><%@page import="com.fpmislata.banco.negocio.EntidadBancaria"%><%@page import="com.fasterxml.jackson.databind.ObjectMapper"%><%
    String id = request.getParameter("id");
    Integer idEntidad = Integer.parseInt(id);
    EntidadBancaria entidadBancaria = new EntidadBancariaDAOImpHibernate().read(idEntidad);
    ObjectMapper objectMapper = new ObjectMapper();
    String json = objectMapper.writeValueAsString(entidadBancaria);
    response.setContentType("application/json; charset=UTF-8");
    out.print(json);
%>