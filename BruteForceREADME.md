#Simulated Brute Force Attack

##Overview
Simulated a brute force ssh attack on a Debian server using Hydra while also simulating normal successful login traffic with a PowerShell script. Then analyzed with ssh log 
pipelines to a dashboard set up through Grafana.

---
##Technologies Used
Hydra
Powershell
Loki
Grafana
Promtail
Powershell

##Hydra Command
`hydra -L fakeuser -P passwords.txt "SERVER-IP" -t 250`

##Powershell script
I also wrote a powershell script that simulate successful logins and normal traffic patterns which is included in this folder
