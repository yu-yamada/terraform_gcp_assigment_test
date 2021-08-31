# terraform_gcp_assigment_test
gcpのreservation assignmentテスト用

# terraformテスト方法
export BUCKET_NAME=バケット名   
export PROJECT_NAME=プロジェクト名   
terraform init -backend-config="bucket=${BUCKET_NAME}" -var="gcp_project=${PROJECT_NAME}"
