############################### Backup #########################################
BACKUP_PREFIX="mc_"
BACKUP_PATH="s3://s3_ bucket/path/"
TMP_PATH="/home/ubuntu/"

################################## HARDWARE ####################################
INSTANCE_NAME="minecraft"

INSTANCE_TYPE=r4.large
PRICE=0.10

# check https://cloud-images.ubuntu.com/locator/ec2/
# look for hvm:ebs-ssd
AMI=ami-6c101b0a

VPC=vpc-abcd123
SUBNET=subnet-abcdef123

VOL_SIZE=8

########################### Namecheap Dynamic DNS ##############################
DDNS_DOMAIN=foo.bar
DDNS_HOST=mc
DDNS_PASSWORD=verylongpasswordgoeshere

######################### Load custom config ###################################
if [ -f config.local ]; then
    . config.local
fi
