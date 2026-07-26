
$commands = @(
    "pwd",
    "hostname",
    "whoami",
    "uptime",
    "ls"
)

while ($true) {
    $cmd = Get-Random $commands
    ssh -i $env:USERPROFILE\.ssh\labuser_key labuser@192.168.1.182 $cmd
    Start-Sleep -Seconds (Get-Random -Minimum 30 -Maximum 180)
}
