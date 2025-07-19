#!/bin/bash
source .venv/bin/activate
uv add -r requirements.txt
uv sync
uv add --dev ipykernel
uv run python -m ipykernel install --user --name=llm_engineering_env --display-name="LLM Engineering"
uv run --with jupyter jupyter lab --KernelSpecManager.default_kernel_name=llm_engineering_env
