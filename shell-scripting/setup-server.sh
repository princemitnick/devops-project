#!/bin/bash

echo "Setup and configure server"

file_name=config.yaml
config_dir=$1

if [ -x "$config_dir" ]
then
  echo "reading config directory contents"
  config_files=$(ls "$config_dir")
else
  echo "config dir not found. Creating one."
  mkdir "$config_dir"
  touch "$config_dir/config.sh"
fi

user_group=$2

if [ "$user_group" == "test" ]
then
  echo "Configure the server"
elif [ "$user_group" == "admin" ];
then
  echo "This is the right user"
else
  echo "No permission to configure server. wrong user"
  echo "$user_group"
fi

echo "using file $file_name to configure something"
echo "here are all configuration files : $config_files"



