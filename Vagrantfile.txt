Vagrant.configure("2") do |config|
  # On part d'une base Ubuntu standard (plus stable pour le CI que ta propre image pour l'instant)
  config.vm.box = "ubuntu/jammy64"

  # Configuration réseau (Port forwarding pour Ollama)
  config.vm.network "forwarded_port", guest: 11434, host: 11434

  # Configuration des ressources (GitHub Actions est limité, on reste modeste)
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
    vb.cpus = 2
  end

  # Appel du script qu'on vient de créer
  config.vm.provision "shell", path: "install.sh"
end