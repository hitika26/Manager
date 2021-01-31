param (
    [parameter (
        Mandatory = $true,
        Position = 0
        )
    ]
    [int]$year
)
function Check-LeapYear {
    if ((($year%4 -eq 0)-and($year%100 -ne 0))-or($year%400 -eq 0)) {
        Write-Host "$year is a LEAP year"
    }
    else {
        Write-Host "$year is NOT a LEAP year"
    }
}
Check-LeapYear