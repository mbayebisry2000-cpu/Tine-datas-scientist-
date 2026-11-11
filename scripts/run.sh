#!/bin/bash

# Script d'automatisation pour le projet ML (Analyse du risque de diabète)
# Inspiré des bonnes pratiques d'ingénierie (comme le projet ArkHiMed)

# Arrêt du script en cas d'erreur (bonne pratique)
set -e

# Vérification des paramètres (Point 8 : au moins 2 paramètres)
if [ "$#" -lt 2 ]; then
    echo "Erreur : Nombre de paramètres insuffisant."
    echo "Usage : $0 <nom_du_modele> <chemin_des_donnees> [random_seed]"
    exit 1
fi

# Récupération des paramètres
MODEL_NAME=$1
DATA_PATH=$2
RANDOM_SEED=${3:-42} # 3ème paramètre optionnel, 42 par défaut

echo "======================================================"
echo " Démarrage du pipeline d'entraînement"
echo " Modèle : $MODEL_NAME"
echo " Données : $DATA_PATH"
echo " Random Seed : $RANDOM_SEED"
echo "======================================================"

# Vérification de l'existence du fichier de données
if [ ! -f "$DATA_PATH" ]; then
    echo "Erreur : Le fichier de données '$DATA_PATH' est introuvable."
    exit 1
fi

# Point 9 : Création automatique du dossier de résultats
RESULTS_DIR="results/experiments/${MODEL_NAME}_seed${RANDOM_SEED}"
mkdir -p "$RESULTS_DIR"
echo "-> Dossier de résultats créé : $RESULTS_DIR"

# Lancement du script Python (qui se trouve dans src/train.py)
echo "-> Lancement de l'entraînement du modèle..."
python src/train.py --model "$MODEL_NAME" --data "$DATA_PATH" --seed "$RANDOM_SEED" --output "$RESULTS_DIR"

echo "======================================================"
echo " Succès ! Les résultats sont sauvegardés dans $RESULTS_DIR"
echo "======================================================"
