While ($true) {
    
    [Int] $input1 = Read-Host "First number"

    echo "+----------------------+"
    echo "| [ + ] : Add          |"
    echo "| [ - ] : Substract    |"
    echo "| [ * ] : Multiplicate |"
    echo "| [ / ] : Divide       |"
    echo "+----------------------+"
    
    [String]$op     = Read-Host "Operation"

    [Int] $input2 = Read-Host "Second number"

    switch ($op) {
        "+" { $res = $input1 + $input2 }
        "-" { $res = $input1 - $input2 }
        "*" { $res = $input1 * $input2 }
        "/" { $res = $input1 / $input2 }
        default { $res = "Error" }
    }
    Write-Host "`nResult >> $res`n`a"
}