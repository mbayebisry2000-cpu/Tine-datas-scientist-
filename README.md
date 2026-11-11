# Projet Tine-data-scientist (Analyse Médicale)

Ce projet est un pipeline de Machine Learning pour l'analyse de données médicales (prédiction de risque). Il inclut la préparation des données, l'entraînement du modèle et l'évaluation.

## 🛠 Prérequis
- Python 3.10+
- L'outil de gestion de paquets `uv`
- Un environnement Linux (ou WSL/Google Colab)

## 📦 Installation
1. Cloner le dépôt :
   `git clone https://github.com/mbayebisry2000-cpu/Tine-data-scientist-.git`
2. Se placer dans le dossier :
   `cd Tine-data-scientist-`
3. Installer les dépendances avec uv :
   `uv sync`

## 🚀 Lancement du projet
Le projet s'exécute via le script Bash `scripts/run.sh`.

**Commande :**
`bash scripts/run.sh <nom_du_modele> <chemin_des_donnees>`

**Exemple :**
`bash scripts/run.sh random_forest data/raw/donnees.csv`

### Paramètres du script :
- `nom_du_modele` (obligatoire) : Le nom du modèle à entraîner.
- `chemin_des_donnees` (obligatoire) : Le chemin vers le fichier CSV.
- `random_seed` (optionnel) : Par défaut à 42.

Les résultats et les modèles sauvegardés seront automatiquement placés dans le dossier `results/`.
