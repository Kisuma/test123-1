#
# Classe concrète
#

<#
   ! Objet réel héritant des méthodes et propriétés de la classe parente
   ! Nous définissons une méthode supplémentaire pour afficher cet objet.
#>


Class Book : Stuff {
       
    [String] Display () 
    {
        $str = "                .-~~~~~~~~~-._       _.-~~~~~~~~~-.`n"
        $str+= "            __.'              ~.   .~              `.__`n"
        $str+= "          .'//                  \./                    \\`.`n"
        $str+= "        .'//                     |                      \\`.`n"
        $str+= "      .'// .-~''''''~~~~-._      |     _,-~~~~'''''''~-. \\`.`n"
        $str+= "    .'//.-'                 `-.  |  .-'                 -.\\`.`n"
        $str+= "  .'//______.============-..   \ | /   ..-============.____\\`.`n"
        $str+= ".'______________________________\|/___________________________`.`n"

        return $str;
    }
}

$Book = New-Object -type Book
