#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'socialmind::general'
include_recipe 'socialmind::ruby'
include_recipe 'socialmind::nginx'
include_recipe 'socialmind::mongodb'
