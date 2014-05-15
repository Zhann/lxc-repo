%w[
  git
  htop
  iptables
  iptraf
  man
  ncdu
  tcpdump
  tree
  vim
].each do |debian_package|
  package debian_package
end

node[:packages][:extra].each do |debian_package|
  package debian_package
end
