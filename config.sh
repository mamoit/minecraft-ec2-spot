############################### Backup #########################################
BACKUP_PREFIX="mc_"
BACKUP_PATH="s3://s3_ bucket/path/" ### CHANGE ME!
TMP_PATH="/home/ubuntu/"

################################## HARDWARE ####################################
INSTANCE_NAME="minecraft"

INSTANCE_TYPE=r4.large
PRICE=0.10

# check https://cloud-images.ubuntu.com/locator/ec2/
# look for hvm:ebs-ssd
AMI=ami-6c101b0a

VPC=vpc-abcd123  ### CHANGE ME!
SUBNET=subnet-abcdef123  ### CHANGE ME!

VOL_SIZE=8

########################### Namecheap Dynamic DNS ##############################
DDNS_DOMAIN=foo.bar ### CHANGE ME!
DDNS_HOST=mc  ### CHANGE ME!
DDNS_PASSWORD=verylongpasswordgoeshere  ### CHANGE ME!

######################### Load custom config ###################################
if [ -f config.local ]; then
    . config.local
fi
