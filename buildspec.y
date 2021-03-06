version: 0.2

phases:
  install:
    runtime-versions:
      python: 3.7

    commands:
      - echo "Installing the package ..."
      - yum install -y yamllint

  pre_build:
    commands:
      - echo "Pre-building the package ..."
      - yamllint **/*.yaml

  build:
    commands:
      - echo "Building the package ..."

  post_build:
    commands:
      - echo "Post building the package ..."
      - echo "Done!"
