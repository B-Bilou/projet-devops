# 1. On installe Chocolatey (le "App Store" en ligne de commande pour Windows)
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# 2. On utilise Chocolatey pour installer Ollama
choco install ollama -y

# 3. Petite pause pour laisser le service démarrer
Start-Sleep -Seconds 10

# 4. On demande à l'IA de télécharger le modèle (DeepSeek)
# On utilise le petit modèle (1.5b) pour que le build ne dure pas 3 heures
& "C:\Program Files\Ollama\ollama.exe" pull deepseek-r1:1.5b

Write-Host "Installation Windows terminée ! DeepSeek est prêt."