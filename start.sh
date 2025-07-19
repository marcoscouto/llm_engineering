#!/bin/bash
uv venv llms
source llms/bin/activate
uv add -r requirements.txt
uv sync
uv run jupyter lab
