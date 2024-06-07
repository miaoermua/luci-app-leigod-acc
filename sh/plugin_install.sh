#!/bin/sh

# this script is use to install leigod plugin
ver_name="version"
install_env=$0
init_file_name="acc"
binary_prefix="acc-gw.linux"
common_file_name="plugin_common.sh"
download_base_url="http://119.3.40.126/router_plugin"


if [ ${install_env} == "" ]; then
  install_env="formel"
fi

echo "env is ${install_env}"

# download common file 
download_common_file() {
  local download_common_url=${download_base_url}/${common_file_name}
  curl -o /tmp/${common_file_name} ${download_common_url}
  if [ $? != "0" ]; then
    echo "download common file failed"
    return -1
  fi
  echo "download common file success"
}

# download common file 
download_common_file

# include common file 
. /tmp/${common_file_name}

# preinstall_check 
# check and set env
preinstall_check

# install_binary 
install_binary

# install config and init file 
if [ ${is_openwrt} ]; then
  echo "install openwrt config"
  install_openwrt_series_config
  install_openwrt_series_init
  if [ ${is_xiaomi} ]; then
    echo "install xiaomi crond"
    install_xiaomi_monitor
  else
    echo "install openwrt luasrc"
    install_openwrt_series_luasrc
  fi
  show_install_success
  return
fi 
if [ ${is_asus} ]; then
  echo "install asus config"
  install_asus_series_config
  if [ ${is_merlin} ]; then
    echo "install merlin config"
    install_merlin_init
  elif [ ${is_swrt} ]; then
    echo "install swrt config"
    install_merlin_init
  fi
  show_install_success
fi
