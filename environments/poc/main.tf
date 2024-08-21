# Lambda
module "lambda" {
  source = "git::ssh://git@github.com/mauriciogutierrezm/demo_modules_tf.git//lambda/function_layers_nodejs"

  lambda_function_name      = var.lambda_function_name
  private_subnet_ids        = var.private_subnet_ids
  default_security_group_id = var.default_security_group_id
  logs_retention_in_days    = var.logs_retention_in_days
  tags                      = var.tags
  project                   = var.project
  environment               = var.environment

  source_file_path = "../../helpers/index.js"
  output_file_path = "../../helpers/code.zip"

  #Layer config
  lambda_layer_name = var.lambda_layer_name
  layer_zip_file_path = "../../helpers/layer.zip"
}