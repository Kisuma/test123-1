Class Message 
{
    [string]$Text
    [string]$Title

    [bool]$OKCancel
    [bool]$AbortRetryIgnore
    [bool]$YesNoCancel
    [bool]$YesNo
    [bool]$RetryCancel

    [bool]$IconErreur
    [bool]$IconQuestion
    [bool]$IconAvertissement
    [bool]$IconInformation

    OpenPopUp () 
    {
        if     ($this.OKCancel)          { $Btn = 1 }
        elseif ($this.AbortRetryIgnore)  { $Btn = 2 }
        elseif ($this.YesNoCancel)       { $Btn = 3 }
        elseif ($this.YesNo)             { $Btn = 4 }
        elseif ($this.RetryCancel)       { $Btn = 5 }
        else                             { $Btn = 0 }

        if     ($this.IconErreur)        {$Icon = 16 }
        elseif ($this.IconQuestion)      {$Icon = 32 }
        elseif ($this.IconAvertissement) {$Icon = 48 }
        elseif ($this.IconInformation)   {$Icon = 64 }
        else                             {$Icon = 0  }
    
        Add-Type -AssemblyName 'System.Windows.Forms'
        [System.Windows.Forms.MessageBox]::Show($this.Text, $this.Title , $Btn, $Icon)
    }
}

$Message = New-Object Message

$Message.IconErreur = $true
$Message.YesNo = $true

$Message.Title = "Toto"
$Message.Text = "Superrrrrrrrr"

$Message.OpenPopUp()