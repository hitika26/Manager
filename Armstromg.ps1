param (
    [parameter (
        Mandatory = $true
    )]
    [string]$Number
)
function Get-Armstrong{
    try{
        $Length = $Number.Length
        $Sum = 0
        for($Iterator=0; $Iterator -lt $Length; $Iterator++){
            [int]$Value = [convert]::ToInt32($Number[$Iterator], 10)
            $Sum = $Sum + [math]::Pow($Value, $Length)
        }
        if ( $Number -eq $Sum ){
            Write-Output "It is an Armstrong Number."
        }
        else{
            Write-Output "It is not an Armstrong Number."
        }
    }
    catch{
        Write-Host "`nError Message: "$_.Exception.Message
    }
}
Get-Armstrong

