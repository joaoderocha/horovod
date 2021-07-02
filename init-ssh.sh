if [ -f /root/.ssh/authorized_keys ]
then
    echo "SSH already configured."
else
    ssh-keygen -t rsa -b 2048 -N '' -f /root/.ssh/id_rsa
    cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys
    chmod 700 /root/.ssh
    chmod 600 /root/.ssh/authorized_keys
fi
