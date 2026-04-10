# Demo Guide

This demo walks through a full run of the project with expected artifacts and example output.

## 1) Setup

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

## 2) Train

```bash
python3 logistic_regression/logreg_train.py
```

Expected artifact:
- `all_house_weights.txt`

## 3) Predict

```bash
python3 logistic_regression/logreg_predict.py
```

Expected artifact:
- `houses.csv`

Quick check:

```bash
head -n 5 houses.csv
```

Expected format:

```text
Index,Hogwarts House
0,<HouseName>
1,<HouseName>
...
```

## 4) Evaluate

```bash
python3 evaluate.py
```

Example output from this workspace run:

```text
Your score on test set: 0.983
Good job! Mc Gonagall congratulates you.
```

## 5) Visualization Demo (Optional)

```bash
python3 data_visualisation/histogram.py
python3 data_visualisation/scatter_plot.py
python3 data_visualisation/pair_plot.py
```

Expected artifacts:
- `histogram_analysis.png`
- `scatter_plot.png`
- `manual_pair_plot.png`

## 6) Presenter Flow (2-3 minutes)

1. Explain the goal: classify Hogwarts house from grades.
2. Run training and mention one-vs-rest logistic regression.
3. Run prediction to generate `houses.csv`.
4. Run evaluation and report the score.
5. Show one generated plot image to highlight EDA.

## Troubleshooting

- `ModuleNotFoundError: No module named matplotlib`
  - Run: `pip install -r requirements.txt`
- `Error: missing dataset_truth.csv in the current directory.`
  - Run commands from the project root.
