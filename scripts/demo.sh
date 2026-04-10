#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PYTHON_BIN="${PYTHON_BIN:-python3}"

cd "$ROOT_DIR"

echo "[1/3] Training model..."
"$PYTHON_BIN" logistic_regression/logreg_train.py

echo "[2/3] Predicting houses..."
"$PYTHON_BIN" logistic_regression/logreg_predict.py

echo "[3/3] Evaluating predictions..."
"$PYTHON_BIN" evaluate.py

echo "Done. Generated files:"
echo "- all_house_weights.txt"
echo "- houses.csv"
