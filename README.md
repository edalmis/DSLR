# Hogwarts House Classification (DSLR)

A lightweight machine learning project that predicts Hogwarts houses from student grades, built with pure Python and a custom mini toolkit.

This repository includes:
- Data exploration and visualization scripts
- A from-scratch one-vs-rest logistic regression training pipeline
- Prediction export to CSV
- Accuracy evaluation against ground truth labels

## Project Structure

- `datasets/dataset_train.csv`: Training set
- `datasets/dataset_test.csv`: Test set (without labels)
- `dataset_truth.csv`: Ground-truth labels for evaluation
- `ml_toolkit/`: Custom utilities for CSV handling and statistics
- `data_visualisation/`: EDA scripts (describe, histograms, scatter, pair plot)
- `logistic_regression/`: Training and prediction scripts
- `evaluate.py`: Compares predictions with ground truth and prints score

## Requirements

- Python 3.10+
- pip

Install dependencies:

```bash
pip install -r requirements.txt
```

## Quick Start

### 1) Train the model

```bash
python3 logistic_regression/logreg_train.py
```

This creates:
- `all_house_weights.txt`

### 2) Predict houses on test set

```bash
python3 logistic_regression/logreg_predict.py
```

This creates:
- `houses.csv`

### 3) Evaluate predictions

```bash
python3 evaluate.py
```

Typical output:

```text
Your score on test set: 0.983
Good job! Mc Gonagall congratulates you.
```

## Data Visualization

Run each script independently:

```bash
python3 data_visualisation/describe.py datasets/dataset_train.csv
python3 data_visualisation/histogram.py
python3 data_visualisation/scatter_plot.py
python3 data_visualisation/pair_plot.py
```

Generated images:
- `histogram_analysis.png`
- `scatter_plot.png`
- `manual_pair_plot.png`

## One-command Demo

Use the included demo script:

```bash
bash scripts/demo.sh
```

The script trains, predicts, evaluates, and prints useful status messages.

## Notes

- The classifier is trained in one-vs-rest mode for four houses:
  - Gryffindor
  - Slytherin
  - Ravenclaw
  - Hufflepuff
- Feature normalization parameters are saved per house and reused at prediction time.
- If `matplotlib` is missing, visualization scripts will fail until dependencies are installed.
