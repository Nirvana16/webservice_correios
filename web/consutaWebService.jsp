<%-- 
    Document   : consutaWebService
    Created on : 23/08/2018, 16:26:03
    Author     : zedan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <%-- start web service invocation --%><hr/>
    <%
    try {
	br.com.correios.bsb.sigep.master.bean.cliente.AtendeClienteService service = new br.com.correios.bsb.sigep.master.bean.cliente.AtendeClienteService();
	br.com.correios.bsb.sigep.master.bean.cliente.AtendeCliente port = service.getAtendeClientePort();
	 // TODO initialize WS operation arguments here
	//java.lang.String cep = "28073475";
	String cep = request.getParameter("cep");
	// TODO process result here
	br.com.correios.bsb.sigep.master.bean.cliente.EnderecoERP result = port.consultaCEP(cep);
	out.println("Endereco = "+result.getEnd());
        out.println("Bairro = "+result.getBairro());
        out.println("Cidade = "+result.getCidade());
        out.println("UF = "+result.getUf());
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
