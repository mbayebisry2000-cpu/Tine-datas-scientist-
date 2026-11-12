# Projet Tine-data-scientist (Analyse Médicale)

## Краткое описание проекта (Brève description)
Ce projet est un pipeline de Machine Learning pour l'analyse de données médicales (prédiction de risque de maladie). Il inclut la préparation des données, l'entraînement du modèle avec `scikit-learn` et l'interprétation des résultats. Pour chaque lancement, les résultats de validation sont sauvegardés dans le répertoire `results/experiments/`.

## Требования к окружению (Prérequis)
* Python `>=3.10,<3.11`.
* `uv` pour créer et gérer l'environnement.
* Sur **Linux et WSL**, pour installer `uv`, utilisez le script officiel :
  ```bash
  curl -LsSf https://astral.sh/uv/install.sh | sh
  На Windows можно установить uv через Winget:
  winget install --id=astral-sh.uv -e
