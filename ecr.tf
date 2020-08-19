resource "aws_ecr_repository" "ecr_repository" {
  name                 = "tf-repo-petclinic"
  image_tag_mutability = "MUTABLE"

  
}