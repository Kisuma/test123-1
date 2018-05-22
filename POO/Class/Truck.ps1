#
# Classe concrète
#

<#
   ! Objet réel héritant des méthodes et propriétés de la classe parente
   ! Nous définissons une méthode supplémentaire pour afficher cet objet.
#>


Class Truck : Stuff {
       
    [String] Display () 
    {
        $str = "                     _________________________________________________`n"
        $str+= "            /||     |                                                 |`n"
        $str+= "             ||     |                                                 |`n"
        $str+= "        .----|-----,|             F R E E     C A N D Y               |`n"
        $str+= "        ||  ||   ==||                                                 |`n"
        $str+= "   .-----'--'|   ==||                                                 |`n"
        $str+= "   |)-      ~|     ||_________________________________________________|`n"
        $str+= "   | ___     |     |____...==..._  >\______________________________|`n"
        $str+= "  [_/.-.\'--'-------- //        \\/   |/            \\ .-.  .-. //`n"
        $str+= "    ( o )`==='''''''''          ( o )( o )            '( o )( o )`n"
        $str+= "     '-'                        '-'  '-'               '-'  '-'`n"
        
        return $str;
    }
}

$Truck = New-Object -type Truck