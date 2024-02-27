# FOUND 15224 TO BE USED WITH REFACTORED CODE. NEED NEWER TERRAFORM VERSION
# https://developer.hashicorp.com/terraform/tutorials/configuration-language/move-config
# COMMENTING THIS OUT UNTIL WE CAN UPGRADE VERSION.

# module "policy" {
#   for_each = var.repos
#   source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
#   repository_name            = each.key
#   development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
#   preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
#   qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
#   stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
#   train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
# }

module "python_flask_docker_hello_world" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.python_flask_docker_hello_world.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "demo_java_spring" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.demo_java_spring.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "hello_world_api" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.hello_world_api.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "clamav_scan" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.clamav_scan.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "mule" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.mule.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "hello-world-spring" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.hello_world_spring.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "concourseci-deploy" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.concourseci_deploy.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "concourseci-deploy-java17" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.concourseci_deploy_java17.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "concourseci-build-java" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.concourseci_build_java.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "concourseci-lambda" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.concourseci_lambda.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "app-dynamics-java" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.app_dynamics_java.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "corvesta-specs" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.corvesta_specs.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "practitioner-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.practitioner_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "claims-ocr-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.claims_ocr_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "claims-pronto-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.claims_pronto_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "correspondence-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.correspondence_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "correspondence-he-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.correspondence_he_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}
module "accounting-he-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.accounting_he_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "print_vendor_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.print_vendor_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "springboot_base" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.springboot_base.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "accounting_gl_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.accounting_gl_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "hello_world_portal" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.hello_world_portal.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "broker_portal" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.broker_portal.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "provider_portal" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.provider_portal.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "core_email" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.core_email.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "secure_notification" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.secure_notification.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "benefit_portal" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.benefit_portal.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "employer_portal" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.employer_portal.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "broker_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.broker_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "accounting_bank_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.accounting_bank_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "provider_patient_search_history_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.provider_patient_search_history_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "limitation_summary_svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.limitation_summary_svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "portals_public_svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.portals_public_svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "member_portal" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.member_portal.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "rating_portal" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.rating_portal.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "rating_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.rating_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "core_code_lists_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.core_code_lists_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "core_code_list_cache_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.core_code_list_cache.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "ice_app_java" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ice_app_java.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "document_management" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.document_management.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "activity_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.activity_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "fly" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.fly.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "cv_keycloak" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.cv_keycloak.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "employer_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.employer_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "xpath" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.xpath.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "ice_gateway_realtime" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ice_gateway_realtime.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "datadog_java_client_base" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.datadog_java_client_base.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "hello_world_data_dog" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.hello_world_data_dog.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "multitenant_microservice" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.multitenant_microservice.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "mule_cli" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.mule_cli.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "renewals_poolgrouprenewals_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.renewals_poolgrouprenewals_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "activity_log_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.activity_log_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "talend_build" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.talend_build.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "temp_member_oldstack" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.temp_member_oldstack.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "finance_admin_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.finance_admin_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "finance360_portal" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.finance360_portal.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "architecture" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.architecture.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "helloworld_job" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.helloworld_job.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "core_security_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.core_security_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "nomad_dispatcher_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nomad_dispatcher_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "magnolia_author_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.magnolia_author_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "magnolia_public_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.magnolia_public_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "helloworld_ice" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.helloworld_ice.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

#module "ice_loadClaims" {
#  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
#  repository_name            = aws_ecr_repository.ice_loadClaims.name
#  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
#  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
#  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
#  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
#  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
#}

module "nomad_cli" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nomad_cli.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "renewals_portal" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.renewals_portal.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

#module "ice_generate_835" {
#  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
#  repository_name            = aws_ecr_repository.ice_generate_835.name
#  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
#  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
#  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
#  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
#  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
#}

module "file_transfer_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.file_transfer_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

#module "ice_payment_acknowledgement" {
#  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
#  repository_name            = aws_ecr_repository.ice_payment_acknowledgement.name
#  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
#  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
#  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
#  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
#  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
#}

module "ice_lambda" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ice_lambda.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "customer_service_svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.customer_service_svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "icegateway_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.icegateway_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

# DO NOT DELETE
module "reverse_proxy" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.reverse_proxy.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

#module "ice_deliver835togis" {
#  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
#  repository_name            = aws_ecr_repository.ice_deliver835togis.name
#  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
#  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
#  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
#  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
#  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
#}

module "icegateway_portal" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.icegateway_portal.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "usermanagement_portal" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.usermanagement_portal.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "admin_portal" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.admin_portal.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "homepage_portal" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.homepage_portal.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "ice_ee_transform" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ice_ee_transform.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "ice_ee_standardize" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ice_ee_standardize.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "ice_ee_stage" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ice_ee_stage.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "ice_ee_heload" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ice_ee_heload.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "ice_ee_getfile" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ice_ee_getfile.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "load_balancer" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.load_balancer.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "portals_security_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.portals_security_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "api_gateway_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.api_gateway.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "claim_attachment_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.claim_attachment_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "user_management_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.user_management_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "gis_s3_access" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.gis_s3_access.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

#module "ice_load_835_transmission_details" {
#  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
#  repository_name            = aws_ecr_repository.ice_load_835_transmission_details.name
#  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
#  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
#  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
#  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
#  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
#}

module "core_fax_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.core_fax_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "cv-dd-agent" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.cv-dd-agent.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "ice_restart_claims" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ice_restart_claims.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "claim360_portal" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.claim360_portal.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "cpq360_portal" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.cpq360_portal.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}


module "claims-he-svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.claims-he-svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "concourse-veracode" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.concourse-veracode.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "lifesmile_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.lifesmile_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "ice-get-id" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ice-get-id.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "healthedge-message-bridge" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.healthedge-message-bridge.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "nomad-client-rds" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nomad-client-rds.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "nomad-client-qlik" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nomad-client-qlik.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "nomad-client-hedns" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nomad-client-hedns.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "airflow" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.airflow.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "icegateway-realtime-proxy-he-svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.icegateway_realtime_proxy_he_svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "nomad-enterprise-scheduler" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nomad-enterprise-scheduler.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "git2consul" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.git2consul.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "document-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.document_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "nomad-concourse-pipeline" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nomad-concourse-pipeline.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "client-onboarding-pipeline" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.client-onboarding-service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "nomad-sftp-user" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nomad-sftp-user.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "nomad-seed-data" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nomad-seed-data.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "nomad-cognito" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nomad-cognito.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "client-management-portal" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.client-management-portal.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "nomad-vulcan" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nomad-vulcan.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "nginx-emma" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nginx-emma.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "document_management_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.document_management_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "nomad-tenant-dms" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nomad-tenant-dms.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "document_reader" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.document_reader.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "nomad-data" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nomad-data.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "nomad-client-cognito" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nomad-client-cognito.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "nomad-tenant-cognito" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nomad-tenant-cognito.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "extracts-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.extracts-service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "ice-cleanup" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ice-cleanup.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "benefits-svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.benefits-svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "group-account-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.group-account-service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "member-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.member-service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "issue-tracking-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.issue-tracking-service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "ivr-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ivr-service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "ivr-facade-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ivr-facade-service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "nomad-enterprise-scheduler-helloworld" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nomad-enterprise-scheduler-helloworld.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "concourse-db-build" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.concourse-db-build.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "extracts-he-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.extracts-he-service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "accounting-legacyar-svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.accounting-legacyar-svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "correspondence_trigger_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.correspondence_trigger_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "qa_dashboard" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.qa_dashboard.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "healthedge-transaction-manager" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.healthedge-transaction-manager.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "helloworld_django" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.helloworld_django.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "liquibase" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.liquibase.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "elasticmonitor" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ks_elastic_monitor.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "nginx-mule-lb" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nginx_mule_lb.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "cognito-dr-image" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.cognito-dr-image.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "members-he-svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.members-he-svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "enrollment-he-svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.enrollment-he-svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "benefit_explanation_portal" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.benefit_explanation_portal.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "benefit-explanation-svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.benefit_explanation_svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "clovercall_scan" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.clovercall_scan.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "negativenpfreturn_scan" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.negativenpfreturn_scan.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "s3ftpcall_scan" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.s3ftpcall_scan.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "ftps3call_scan" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ftps3call_scan.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "cob_loader_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.cob_loader_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "funding_adjustment_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.funding_adjustment_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "springboot_core_proxy_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.springboot_core_proxy.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "qa_webautomation_dashboard" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.qa_webautomation_dashboard.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "practitioner-he-svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.practitioner_he_svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "practitioner_he_integration" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.practitioner_he_integration.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "broker_he_integration" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.broker_he_integration.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "nomad_mule_restart" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nomad_mule_restart.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "benefits_plan_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.benefits_plan_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "core_service_code_cache_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.core_service_code_cache_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "accumulator_he_svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.accumulator_he_svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "qtc_translation_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.qtc_translation_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "nginx-gump" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nginx_gump.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "core_faxback_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.core_faxback_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "finance_admin_he_svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.finance_admin_he_svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "correspondence_he_proxy_svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.correspondence_he_proxy_svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "cloudwatch_log_miner_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.cloudwatch_log_miner_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "nomad-portals-ingress" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nomad-portals-ingress.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "broker_he_svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.broker_he_svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "nginx_plus" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nginx_plus.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "nginx_alpine" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.nginx_alpine.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}


module "translation_portal" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.translation_portal.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "underwriting_he_svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.underwriting_he_svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "dataquality_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.dataquality_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "data_generation_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.data_generation_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}


module "dataquality_he_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.dataquality_he_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}


module "quote_to_card_svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.quote_to_card_svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "dataquality_portal" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.dataquality_portal.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "crosswalk-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.crosswalk-service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "core-sftp-transfer-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.core_sftp_transfer_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "core-s3-bucket-notify" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.core_s3_bucket_notify.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "strongdm_relay" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.strongdm_relay.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}
module "correspondence_portal" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.correspondence_portal.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}
module "ice_generate_834_outbound" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ice_generate_834_outbound.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "slack_notification_resource" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.slack_notification_resource.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "ksedw_load_all_dims" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ksedw_load_all_dims.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "data-encara-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.data_encara_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "ice-extracts" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ice_extracts.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "portals-document-svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.portals_document_svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "correspondence-reports" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.correspondence_reports.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "card-payment-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.card_payment_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "portals-cms-svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.portals-cms-svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "edi-generate837dental-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.edi_generate837dental_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "claims-edi-he-svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.claims-edi-he-svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "ice-generate-edi-svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ice-generate-edi-svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "cost-estimator-svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.cost-estimator-svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "provider-experience" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.provider-experience.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "broker-experience" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.broker-experience.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "broker-employer-experience" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.broker-employer-experience.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "employer-experience" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.employer-experience.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "concourse-git-bitbucket-pr" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.concourse-git-bitbucket-pr.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "kafka-consumer-rabbit" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.kafka-consumer-rabbit.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "era835-edi-he-svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.era835-edi-he-svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "kafka-consumer-message-search" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.kafka-consumer-message-search.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "portals-ddpa-cahps" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.portals-ddpa-cahps.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "ice-refresh-snapshot" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ice_refresh_snapshot.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "ksedw-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ksedw-service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "ksedw-extracts" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ksedw-extracts.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}
module "ci-alpine-lambda-java8" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ci-alpine-lambda-java8.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "kafka-monitoring" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.kafka-monitoring.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "individual_renewals_svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.individual_renewals_svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "keyspring-storefront-portal" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.keyspring-storefront-portal.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "filebeat" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.filebeat.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "selfservice-extract-svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.selfservice-extract-svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "ksdw-he-svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ksdw_he_svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}


module "odl-ddpa-input-file-spring-boot" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.odl-ddpa-input-file-spring-boot.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "selfservice-extract" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.selfservice-extract.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "odl-provider-consumer-mongo-sink" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.odl-provider-consumer-mongo-sink.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "odl-npf-provider-aggregation-kstream" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.odl-npf-provider-aggregation-kstream.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "datasolutions_reporting_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.datasolutions_reporting_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "kafka-member-producer" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.kafka-member-producer.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "kafka-id-card-consumer" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.kafka-id-card-consumer.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "id-card-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.id-card-service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "member-search-svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.member-search-svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "practitioner-location-svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.practitioner_location_svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "odl-npf-provider-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.odl-npf-provider-service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "core_ai_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.core_ai_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "core_ai_claim_puller_service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.core_ai_claim_puller_service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "ddpa-national-inquiry" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.ddpa-national-inquiry.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "benefits-verification-svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.benefits-verification-svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "experience_renewals_svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.experience_renewals_svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "cob-svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.cob-svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "melissa_data" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.melissa_data.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "portals-report-svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.portals-report-svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "practitioner_load_svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.practitioner_load_svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "odl-member-aggregation-kstream" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.odl-member-aggregation-kstream.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "odl-member-consumer-mongo-sink" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.odl-member-consumer-mongo-sink.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "odl-member-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.odl-member-service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "batch-automation-svc" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.batch-automation-svc.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}

module "benefits-reporting-service" {
  source                     = "git::https://bitbucket.org/corvesta/devops.infra.modules.git//policies/read_ecr_objects?ref=0.0.120"
  repository_name            = aws_ecr_repository.benefits-reporting-service.name
  development_account_number = data.terraform_remote_state.dev_vpc.outputs.account_id
  preprod_account_number     = data.terraform_remote_state.preprod_vpc.outputs.account_id
  qa_account_number          = data.terraform_remote_state.qa_vpc.outputs.account_id
  stage_account_number       = data.terraform_remote_state.staging_vpc.outputs.account_id
  train_account_number       = data.terraform_remote_state.training_vpc.outputs.account_id
}
