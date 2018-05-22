#
# Classe concrète
#

<#
   ! Objet réel héritant des méthodes et propriétés de la classe parente
   ! Nous définissons une méthode supplémentaire pour afficher cet objet.
#>


Class Watch : Stuff {
       
    [String] Display () 
    {
      $str = "    /         /\`n"
      $str+= "   / -----   (::\`n"
      $str+= "  /Â©_______Â®\::\`n"
      $str+= "┌┤ ║je,13/4║ ├┐╘╗`n"
      $str+= "└┤ ║       ║ ├┘:╣`n"
      $str+= " │ ║_15:41_║ │:╒╝`n"
      $str+= "  \Â®  ▼▲▼  Â©/::/`n"
      $str+= "   \ -----   (::/`n"
      $str+= "    \_______  \/`n"

        return $str;
    }
}

$Watch = New-Object -type Watch
