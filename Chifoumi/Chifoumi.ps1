function Rules {
    echo "+-----------------+"
    echo "| [ 1 ] : Pierre  |"
    echo "| [ 2 ] : Feuille |"
    echo "| [ 3 ] : Ciseaux |"
    echo "+-----------------+"
}

function DisplayResult ($u, $c, $r) {
    clear
    Write-Host "Joueur: $u"
    sleep 1
    Write-Host "Ordinateur: $c"
    sleep 1
    Write-Host "Résultat: $r"
    sleep 2
}

function DisplayScores ($u, $c) {
    clear
    Write-Host "Score Joueur: $u"
    sleep 1
    Write-Host "Score Ordinateur: $c"
    sleep 1
    clear
}


[Int] $scoreUser = 0
[Int] $scoreCpu = 0


function Main {

    While ($true) {

        Rules
    
        [Int] $user = Read-Host "Votre choix"
        [Int] $cpu = Get-Random -Maximum 4 -Minimum 1
    
        switch ($user) {
            1 { $userChoice = "Pierre"  }
            2 { $userChoice = "Feuille" }
            3 { $userChoice = "Ciseaux" }
            default { exit 0}
        }
        switch ($cpu) {
            1 { $cpuChoice = "Pierre"  }
            2 { $cpuChoice = "Feuille" }
            3 { $cpuChoice = "Ciseaux" }
        }
    
        if (($userChoice -eq "Pierre") -and ($cpuChoice -eq "Pierre")) {
            $res = "Égalité"
        }
        if (($userChoice -eq "Feuille") -and ($cpuChoice -eq "Pierre")) {
            $res = "Gagné"
            $scoreUser++
        }
        if (($userChoice -eq "Ciseaux") -and ($cpuChoice -eq "Pierre")) {
            $res = "Perdu"
            $scoreCpu++
        }
        if (($userChoice -eq "Pierre") -and ($cpuChoice -eq "Feuille")) {
            $res = "Perdu"
            $scoreCpu++
        }
        if (($userChoice -eq "Feuille") -and ($cpuChoice -eq "Feuille")) {
            $res = "Égalité"
        }
        if (($userChoice -eq "Ciseaux") -and ($cpuChoice -eq "Feuille")) {
            $res = "Gagné"
            $scoreUser++
        }
        if (($userChoice -eq "Pierre") -and ($cpuChoice -eq "Ciseaux")) {
            $res = "Gagné"
            $scoreUser++
        }
        if (($userChoice -eq "Feuille") -and ($cpuChoice -eq "Ciseaux")) {
            $res = "Perdu"
            $scoreCpu++
        }
        if (($userChoice -eq "Ciseaux") -and ($cpuChoice -eq "Ciseaux")) {
            $res = "Égalité"
        }

        DisplayResult $userChoice $cpuChoice $res
        DisplayScores $scoreUser $scoreCpu
    }
}

Main