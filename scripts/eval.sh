#!/bin/zsh
echo "current python path: $(which python)"

LOG_PATH=outputs/eval/$(date +%Y-%m-%d_%H-%M-%S)
# TASK_TO_NAME_INDICES can be found OmniGibson/omnigibson/learning/utils/eval_utils.py
TASK_NAME="turning_on_radio"

python OmniGibson/omnigibson/learning/eval.py policy=websocket log_path=$LOG_PATH task.name=$TASK_NAME