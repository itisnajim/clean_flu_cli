#!/bin/bash
# Runs `mason bundle` to generate bundles for all bricks within the respective templates directories.

commands=(
    init
    model
    repository
    usecase
    screen
)

for command in "${commands[@]}"
do
    brick="clean_flu_$command"
    echo "bundling $brick..."
    mason bundle --source path "./bricks/$brick" --type dart --output-dir "lib/src/commands/$command/template/"
done

dart format .