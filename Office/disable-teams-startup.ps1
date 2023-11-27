# Set the execution policy to RemoteSigned
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force

# Define the registry path and value to be removed
$registryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"
$valueName = "com.squirrel.Teams.Teams"

# Remove the registry value
Remove-ItemProperty -Path $registryPath -Name $valueName -ErrorAction SilentlyContinue