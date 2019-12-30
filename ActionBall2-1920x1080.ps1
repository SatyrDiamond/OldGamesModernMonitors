$configfile = "C:\ProgramData\rionix\actionball2\conf\settings.lua" 

If (Get-Content $configfile | %{$_ -match ", 800, 600"}) 
{
    (Get-Content $configfile) -replace ", 800, 600",", 1920, 1080" | out-file $configfile 
}

If (Get-Content $configfile | %{$_ -match ", 1280, 1024"}) 
{
    (Get-Content $configfile) -replace ", 1024, 768",", 1920, 1080" | out-file $configfile 
}

If (Get-Content $configfile | %{$_ -match ", 1152, 720"}) 
{
    (Get-Content $configfile) -replace ", 1152, 720",", 1920, 1080" | out-file $configfile 
}

If (Get-Content $configfile | %{$_ -match ", 1280, 720"}) 
{
    (Get-Content $configfile) -replace ", 1280, 720",", 1920, 1080" | out-file $configfile 
}

If (Get-Content $configfile | %{$_ -match ", 1280, 1024"}) 
{
    (Get-Content $configfile) -replace ", 1280, 1024",", 1920, 1080" | out-file $configfile 
}