<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Juros Compostos</title>
    </head>
    <body>
        <h1>Juros Compostos</h1>
        <form method="post">
            <label for="valor">Capital Inicial (R$): </label>
            <input type="number" id="valor" name="valor" min="0" step=".01" required>
            <br><br>
            <label for="taxa">Taxa de juros (% ao mês):</label>
            <input type="number" id="taxa" name="taxa" min="0.01" step=".01" required>
            <br><br>
            <label for="periodo">Período (em meses):</label>
            <input type="number" id="periodo" name="periodo" min="1" required>
            <br><br>
            <input type="submit" value="Calcular Juros Compostos">

            <hr>

            <%
                String valorStr = request.getParameter("valor");
                String taxaStr = request.getParameter("taxa");
                String periodoStr = request.getParameter("periodo");

                if (valorStr != null && taxaStr != null && periodoStr != null) {
                    try {
                        double capitalInicial = Double.parseDouble(valorStr);
                        double taxaMensal = Double.parseDouble(taxaStr) / 100.0; 
                        int periodoMeses = Integer.parseInt(periodoStr);

                        double montanteFinal = capitalInicial * Math.pow(1 + taxaMensal, periodoMeses);
                        double jurosCompostos = montanteFinal - capitalInicial;

                        out.println("<h2>Resultado Final após " + periodoMeses + " meses: R$ " + String.format("%.2f", montanteFinal) + "</h2>");
                        out.println("<p>Juros Compostos Total: R$ " + String.format("%.2f", jurosCompostos) + "</p>");

                    } catch (NumberFormatException e) {
                        out.println("<p style='color:red;'>Erro: Por favor, insira valores numéricos válidos.</p>");
                    }
                }
            %>
        </form>
    </body>
</html>