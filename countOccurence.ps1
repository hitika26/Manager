param(
    [string]$inputString,
    [string]$inputChar
)

function Get-CountOccurence{
   try{
       if($inputChar.Length -gt 1){
            Write-Output "You enter string in second argument instead of character"
            return
        }
        $count=0
        for ($iterator=0; $iterator -lt $inputString.Length; $iterator++) { 
            if($inputString[$iterator]-eq $inputChar){
              $count++
            }
        }
        Write-Output "The count of your character is "$count
    }catch{
        Write-Output "format to input string is String chracter you might enter wrong format"   
    }
}
Get-CountOccurence
