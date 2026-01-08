# 📦 Box Vagrant DeepSeek (CI/CD)

Bienvenue sur le projet d'automatisation de la Box DeepSeek.
Ce projet construit automatiquement une machine virtuelle Ubuntu avec **Ollama** et **DeepSeek** pré-installés.

## 🚀 Comment utiliser cette box ?

Si vous voulez utiliser cette machine sur votre ordinateur, créez un dossier vide et un fichier `Vagrantfile` avec ceci :

```ruby
Vagrant.configure("2") do |config|
  config.vm.box = "easy4ia/deepseek-ci"
  config.vm.network "forwarded_port", guest: 11434, host: 11434
end