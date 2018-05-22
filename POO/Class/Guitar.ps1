#
# Classe concrète
#

<#
   ! Objet réel héritant des méthodes et propriétés de la classe parente
   ! Nous définissons une méthode supplémentaire pour afficher cet objet.
#>


Class Guitar : Stuff {
       
    [String] Display () 
    {
        $str = "                        ,-.        _.---._`n"
        $str+= "                      |  `\.__.-''       `.`n"
        $str+= "                       \  _        _  ,.   \`n"
        $str+= " ,+++=._________________)_||______|_|_||    |`n"
        $str+= "(_.ooo.===================||======|=|=||    |`n"
        $str+= "   ~~'                 |  ~'      `~' o o  /`n"
        $str+= "                        \   /~`\     o o  /`n"
        $str+= "                         `~'    `-.____.-' `n"
        return $str;
    }
}

$Guitar = New-Object -type Guitar
