$configfile=$args[0]

if ($variable -eq $null)
{
    Write-Host "OstrichRunners-1920x1080.ps1 C:\(Game Path)\ORunner.con"
    exit
}

If (Get-Content $configfile | %{$_ -match "set ScreenWidth 1024"}) 
{
    (Get-Content $configfile) -replace "set ScreenWidth 1024","set ScreenWidth 1920" | out-file $configfile 
}

If (Get-Content $configfile | %{$_ -match "set ScreenHeight 768"}) 
{
    (Get-Content $configfile) -replace "set ScreenHeight 768","set ScreenHeight 1080" | out-file $configfile 
}
