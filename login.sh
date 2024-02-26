EC2_INSTANCE_IP="54.196.22.176"
EC2_USER="amardeep"
PRIVATE_KEY_FILE="meow.pem"
ssh -i "meow.pem" ubuntu@ec2-54-196-22-176.compute-1.amazonaws.com << 'EOF'

echo 'starting script' 
sh automate.sh
echo 'amardeep'
 
EOF

