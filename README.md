# terraform_gcp_assigment_test
gcpのreservation assignmentテスト用

# ビルドしてローカルのterraformで使えるようにする方法
git clone https://github.com/hirosassa/terraform-provider-google-beta   
git checkout add-reservation-assignment-and-capacity-commitments  
export USER_NAME=yu-yamada   
export VERSION=9.99.9   (たぶん、既存のバージョンとかぶらなければなんでもいい)
go build -o ~/.terraform.d/plugins/registry.terraform.io/${USER_NAME}/google-beta/${VERSION}/darwin_amd64/terraform-provider-google-beta

# terraformテスト方法
export BUCKET_NAME=バケット名   
export PROJECT_NAME=プロジェクト名   
terraform init -backend-config="bucket=${BUCKET_NAME}" -var="gcp_project=${PROJECT_NAME}"
