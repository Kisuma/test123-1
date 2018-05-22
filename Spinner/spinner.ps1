function GetState ($i)
{
    switch ($i) 
    {
        0 { 
            $spin = "[|]" 
            $dots = ""    
        }

        1 { 
            $spin = "[/]" 
            $dots = "."
        }

        2 { 
            $spin = "[-]" 
            $dots = ".."
        }
       
        3 { 
            $spin = "[\]"
            $dots = "..."
        }
    }

    $arr = @{
        Spin=$spin; 
        Dots=$dots;
    }

    return $arr   
}



function Main
{
    
    [Int]    $i = 0
    [Int]    $l = 0

    [String] $string = "loading"

    while ($true)
    {
        $upperStr = $string.ToUpper()
        $str = $string.Replace($string[$l], $upperStr[$l])

        $res = GetState($i)

        cls
        Write-Host  $res.Spin $str $res.Dots

        if ($i -eq 3) {
            $i = 0
        } else {
            $i++
        }

        if ($l -le $string.Length) {
            $l++
        } else {
            $l = 0
        }

        sleep       -Milliseconds 100
    }
}

Main

