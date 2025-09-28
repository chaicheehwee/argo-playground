# https://kind.sigs.k8s.io/docs/user/rootless/

sudo mkdir -p '/etc/systemd/system/user@.service.d'

sudo touch '/etc/systemd/system/user@.service.d/delegate.conf'



sudo cat << EOF | sudo tee -a /etc/systemd/system/user@.service.d/delegate.conf > /dev/null
[Service]
Delegate=yes

# Default podman limit is 4096
# Disable limit
[containers]
pids_limit = -1
EOF

systemctl --user restart podman

sudo cat /etc/systemd/system/user@.service.d/delegate.conf