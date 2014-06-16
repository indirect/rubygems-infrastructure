#
# Cookbook Name:: rubygems-bastion
# Recipe:: default
#

include_recipe 'chef-vault'
include_recipe 'rubygems'

duo = chef_vault_item('duo', 'credentials')

node.default['duosecurity']['ikey'] = duo['ikey']
node.default['duosecurity']['skey'] = duo['skey']
node.default['duosecurity']['host'] = duo['hostname']

include_recipe 'duo-security'
