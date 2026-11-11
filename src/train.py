# Script d'entraînement du modèle
# Fichier de test pour le pipeline
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("--model", type=str, required=True)
parser.add_argument("--data", type=str, required=True)
parser.add_argument("--seed", type=int, required=True)
parser.add_argument("--output", type=str, required=True)
args = parser.parse_args()

print(f"Modèle reçu : {args.model}")
print(f"Données reçues : {args.data}")
print(f"Random seed : {args.seed}")
print(f"Sauvegarde des résultats dans : {args.output}")
print("Entraînement terminé avec succès !")
