#
# Classe concrète
#

<#
   ! Objet réel héritant des méthodes et propriétés de la classe parente
   ! Nous définissons une méthode supplémentaire pour afficher cet objet.
#>


Class Chocolate : Stuff {
       
    [String] Display () 
    {
        $str = "   ___  ___  ___  ___  ___.---------------.`n"
        $str+= "  .'\__\'\__\'\__\'\__\'\__,`   .  ____ ___ \`n"
        $str+= "  |\/ __\/ __\/ __\/ __\/ _:\   |`.  \  \___ \`n"
        $str+= "   \\'\__\'\__\'\__\'\__\'\_`.__|''`. \  \___ \`n"
        $str+= "    \\/ __\/ __\/ __\/ __\/ __:                \`n"
        $str+= "     \\'\__\'\__\'\__\ \__\'\_;-----------------`n"
        $str+= "      \\/   \/   \/   \/   \/ :               hh|`n"
        $str+= "       \|______________________;________________|`n"
        
        return $str;
    }
}

$Chocolate = New-Object -type Chocolate