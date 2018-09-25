<#
.Synopsis
   Alternate Data stream
.DESCRIPTION
   http://www.powertheshell.com/ntfsstreams/
.EXAMPLE
   Example of how to use this cmdlet
.EXAMPLE
   Another example of how to use this cmdlet
#>

    [CmdletBinding()]
    [Alias()]
    [OutputType([int])]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        $Param1,

        # Param2 help description
        [int]
        $Param2
    )

$file = "$env:temp\file.txt"
Set-Content -Path $file -Value 'Test'
Get-Content -Path $file

Add-Content -Path $file -Value 'Secret Information' -Stream 'secretStream'
Get-Content -Path $file

Get-Content -Path $file -Stream 'secretStream'
