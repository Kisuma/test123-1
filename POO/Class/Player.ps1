Class Player 
{
    [Int] $Lives = 10
    [String] $Name

    [String] DisplayLives ($Hearts)
    {
        [String] $str = ""

        for ($i=1; $i -le $Hearts; $i++) {
            $str+= "<3 "
        }
        return $str
    }
}

$Player = New-Object -type Player