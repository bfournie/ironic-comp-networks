sudo useradd stack
sudo passwd stack
echo "stack ALL=(root) NOPASSWD:ALL" | sudo tee -a /etc/sudoers.d/stack
stack ALL=(root) NOPASSWD:ALL
sudo chmod 0440 /etc/sudoers.d/stack
su - stack

