resource "aws_iam_role" "dev_bucket_access" {
  name               = "DevBucketAccess"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

data "aws_iam_policy_document" "assume_role" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::135878023383:root"]
    }
  }
}

resource "aws_iam_policy" "dev_bucket_policy" {
  name   = "DevBucketAccessPolicy"
  policy = file("file(${path.root}/../../policies/dev/dev_bucket_user_policy.json)")
}

resource "aws_iam_role_policy_attachment" "attach" {
  role       = aws_iam_role.dev_bucket_access.name
  policy_arn = aws_iam_policy.dev_bucket_policy.arn
}