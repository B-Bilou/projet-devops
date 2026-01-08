Vagrant.configure("2") do |config|
  # --- COEUR DU REACTEUR : WINDOWS 11 ---
  # On utilise une image de base optimisée pour Vagrant
  config.vm.box = "gusztavvargadr/windows-11-22h2-professional"

  # --- CONNEXION (TRES IMPORTANT) ---
  # Windows ne parle pas SSH par défaut, il parle WinRM
  config.vm.communicator = "winrm"
  config.winrm.username = "vagrant"
  config.winrm.password = "vagrant"

  # --- RESEAU ---
  # On ouvre le port de l'IA
  config.vm.network "forwarded_port", guest: 11434, host: 11434

  # --- PUISSANCE ---
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    # Attention : Windows 11 demande minimum 4Go (4096), idéalement 8Go
    # Sur GitHub Actions gratuit, on est limités, on tente 7Go
    vb.memory = "7168"
    vb.cpus = 3
  end

  # --- INSTALLATION DES LOGICIELS ---
  # On lance le script PowerShell qu'on vient de créer
  config.vm.provision "shell", path: "install.ps1"
end