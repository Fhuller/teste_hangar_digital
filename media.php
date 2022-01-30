<html>
    <head>
    </head>
    <body>
        <center>
            </br>
            <form action="media.php" method="get">
                Nota 1: <input type="text" name="nota1"></br></br>
                Nota 2: <input type="text" name="nota2"></br></br>
                <input type="submit" value="Calcular">
            </form>
            <?php
                $nota1 = $_GET["nota1"];
                $nota2 = $_GET["nota2"];
                $media = ($nota1+$nota2)/2;
                echo "Sua média é: $media </br></br> Você está: ";

                if($media<5){
                    echo "Reprovado";
                }
                elseif($media<=7){
                    echo "Exame";
                }
                else
                echo "Aprovado";
            ?>
        </center>
    </body>
</html>