#!/bin/bash

echo "--- Mise à jour du système ---"
sudo apt-get update
sudo apt-get install -y curl

echo "--- Installation de Ollama ---"
# On installe Ollama via le script officiel
curl -fsSL https://ollama.com/install.sh | sh

echo "--- Démarrage du service Ollama ---"
# On s'assure que Ollama tourne en fond
sudo systemctl start ollama

# ASTUCE DEVOPS :
# Dans un pipeline CI gratuit, télécharger un gros modèle (DeepSeek fait plusieurs Go)
# peut faire planter la CI par manque de place ou de temps.
# Pour l'exercice, on va vérifier que Ollama est là.
# Si tu veux VRAIMENT le modèle dans l'image, décommente la ligne suivante :
# ollama pull deepseek-coder:1.3b