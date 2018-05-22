$find = 0;
$csv = Get-Content -Path ".\departement.csv"

While ($true) 
{
    $userInput = Read-Host "Quel est votre numéro de département ?"

    foreach ($line in $csv)
    {
        $data        = $line.split(',')
        $id          = $data[1].replace('"', '')
        $departement = $data[3].replace('"', '')

        if ($userInput -eq $id) 
        {
            echo "Votre département est : $departement"
            $find++
        } 
    }
    if (!$find)
    {
        echo "Sorry"
    }
}
 