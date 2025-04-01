<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Juros Simples</title>
    </head>
    <body>
        <h1>Juros Simples</h1>
        <form method="post">
            <div><%@include file="WEB-INF/jspf/menu.jspf" %></div>
            <br><br>
            <label for="valor">Valor Investido: </label>
            <input type="number" id="valor" name="valor" min="0" step=".01" required>
            <br><br>
            <label for="taxa">Taxa de juros(%):</label>
            <input type="number" id="taxa" name="taxa" min="0.1" step=".01" required>
            <br><br>
            <label for="mes">Tempo (em meses):</label>
            <input type="number" id="mes" name="mes" min="1" max="12" required>
            <br><br>
            <input type="submit" value="Calcular Juros Simples">


            <%
                String valorStr = request.getParameter("valor");
                String taxaStr = request.getParameter("taxa");
                String mesStr = request.getParameter("mes");

                if (valorStr != null && taxaStr != null && mesStr != null) {
                
                    try {
                        double valor = Double.parseDouble(valorStr);
                        double taxa = Double.parseDouble(taxaStr);
                        int mes = Integer.parseInt(mesStr);
                        

                        double taxaDecimal = taxa / 100.0;
                        double juros = valor * taxaDecimal * mes;
                        double resultadoFinal = valor + juros;

                        out.println("<h2>Resultado esperado após " + mes + " meses: R$ " + String.format("%.2f", resultadoFinal) + "</h2>");
                        out.println("<p>Juros total: R$ " + String.format("%.2f", juros) + "</p>");

                    } catch (NumberFormatException e) {
                        out.println("<p style='color:red;'>Erro: Por favor, insira valores numéricos válidos.</p>");
                    }
                }
            %>
        </form>
    </body>
</html>
