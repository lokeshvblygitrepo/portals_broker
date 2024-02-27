# ECR Lifecycle Policy

resource "aws_ecr_lifecycle_policy" "policy" {
  # for_each   = aws_ecr_repository.repo
  for_each   = var.repos
  repository = each.value
  policy = <<EOF
{
  "rules": [
    {
      "rulePriority": 1,
      "description": "Remove untagged images after 7 days",
      "selection": {
        "tagStatus": "untagged",
        "countType": "sinceImagePushed",
        "countUnit": "days",
        "countNumber": 7
      },
      "action": {
        "type": "expire"
      }
    }
  ]
}
EOF
}


# #######################################
#   EC2 Container Registry Repository   #
# #######################################

# resource "aws_ecr_repository" "repo" {
#   for_each = var.repos
#   name     = each.value

#   image_scanning_configuration {
#     scan_on_push = true
#   }
# }



resource "aws_ecr_repository" "python_flask_docker_hello_world" {
  name = "python-flask-docker-hello-world"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "clamav_scan" {
  name = "clam-av-scan"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "demo_java_spring" {
  name = "demo-java-spring"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "hello_world_api" {
  name = "hello-world-api"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "hello_world_proxy" {
  name = "hello-world-proxy"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "mule" {
  name = "mule"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "hello_world_spring" {
  name = "hello-world-spring"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "concourseci_deploy" {
  name = "concourseci-deploy"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "concourseci_deploy_java17" {
  name = "concourseci-deploy-java17"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "concourseci_build_java" {
  name = "concourseci-build-java"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "concourseci_build_java11" {
  name = "concourseci-build-java11"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "concourseci_lambda" {
  name = "concourseci-lambda"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "app_dynamics_java" {
  name = "app-dynamics-java"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "corvesta_specs" {
  name = "corvesta-specs"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "practitioner_service" {
  name = "practitioner-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "claims_ocr_service" {
  name = "claims-ocr-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "claims_pronto_service" {
  name = "claims-pronto-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ks-mule" {
  name = "ks-mule"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "correspondence_service" {
  name = "correspondence-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "correspondence_he_service" {
  name = "correspondence-he-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}
resource "aws_ecr_repository" "accounting_he_service" {
  name = "accounting-he-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "print_vendor_service" {
  name = "print-vendor-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "correspondence_trigger_service" {
  name = "correspondence-trigger-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "springboot_base" {
  name = "springboot-base"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "accounting_gl_service" {
  name = "accounting-gl-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "hello_world_portal" {
  name = "hello-world-portal"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "broker_portal" {
  name = "broker-portal"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "secure_notification" {
  name = "secure_notification"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "core_email" {
  name = "core-email"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "employer_portal" {
  name = "employer-portal"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "benefit_portal" {
  name = "benefit-portal"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "broker_service" {
  name = "broker-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "accounting_bank_service" {
  name = "accounting-banking-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "provider_patient_search_history_service" {
  name = "provider-patient-search-history-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "limitation_summary_svc" {
  name = "limitation-summary-svc"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "portals_public_svc" {
  name = "portals-public-svc"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "member_portal" {
  name = "member-portal"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "rating_portal" {
  name = "rating-portal"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "provider_portal" {
  name = "provider-portal"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "rating_service" {
  name = "rating-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "core_code_lists_service" {
  name = "core-code-lists-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "core_code_list_cache" {
  name = "core-code-list-cache-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ice_app_java" {
  name = "ice-app-java"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "document_management" {
  name = "document-management"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "activity_service" {
  name = "activity-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "fly" {
  name = "fly"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "cv_keycloak" {
  name = "cv-keycloak"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "employer_service" {
  name = "employer-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "member_proxy" {
  name = "member-proxy"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "xpath" {
  name = "xpath"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ice_gateway_realtime" {
  name = "ice-gateway-realtime"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "datadog_java_client_base" {
  name = "datadog-java-client-base"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "hello_world_data_dog" {
  name = "hello-world-data-dog"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "multitenant_microservice" {
  name = "multitenant-microservice"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "mule_cli" {
  name = "mule-cli"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "renewals_poolgrouprenewals_service" {
  name = "renewals-poolgrouprenewals-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "activity_log_service" {
  name = "activity-log-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "talend_build" {
  name = "talend"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "temp_member_oldstack" {
  name = "temp-member-oldstack"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "finance_admin_service" {
  name = "finance-admin-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "finance360_portal" {
  name = "finance360-portal"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "architecture" {
  name = "architecture"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "helloworld_job" {
  name = "helloworld-job"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "core_security_service" {
  name = "core-security-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nomad_dispatcher_service" {
  name = "nomad-dispatcher-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "magnolia_author_service" {
  name = "magnolia-author-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "magnolia_public_service" {
  name = "magnolia-public-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "helloworld_ice" {
  name = "helloworld-ice"
  image_scanning_configuration {
    scan_on_push = true
  }
}

#resource "aws_ecr_repository" "ice_loadClaims" {
#  name = "ice-load-claims"
#
#  image_scanning_configuration {
#    scan_on_push = true
#  }
#}

resource "aws_ecr_repository" "nomad_cli" {
  name = "nomad-cli"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "renewals_portal" {
  name = "renewals-portal"

  image_scanning_configuration {
    scan_on_push = true
  }
}

#resource "aws_ecr_repository" "ice_generate_835" {
#  name = "ice-generate-835"
#
#  image_scanning_configuration {
#    scan_on_push = true
#  }
#}

resource "aws_ecr_repository" "file_transfer_service" {
  name = "file-transfer-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

#resource "aws_ecr_repository" "ice_payment_acknowledgement" {
#  name = "ice-payment-acknowledgement"
#
#  image_scanning_configuration {
#    scan_on_push = true
#  }
#}

resource "aws_ecr_repository" "ice_lambda" {
  name = "ice-lambda"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "customer_service_svc" {
  name = "customer-service-svc"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "icegateway_service" {
  name = "icegateway-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "reverse_proxy" {
  name = "reverse-proxy"

  image_scanning_configuration {
    scan_on_push = true
  }
}

#resource "aws_ecr_repository" "ice_deliver835togis" {
#  name = "ice-deliver835togis"
#
#  image_scanning_configuration {
#    scan_on_push = true
#  }
#}

resource "aws_ecr_repository" "icegateway_portal" {
  name = "icegateway-portal"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "usermanagement_portal" {
  name = "usermanagement-portal"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "admin_portal" {
  name = "admin-portal"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "homepage_portal" {
  name = "homepage-portal"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ice_ee_transform" {
  name = "ice-ee-transform"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ice_ee_standardize" {
  name = "ice-ee-standardize"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ice_ee_stage" {
  name = "ice-ee-stage"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ivr_proxy" {
  name = "ivr-proxy"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "portals_security_service" {
  name = "portals-security-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ice_ee_heload" {
  name = "ice-ee-heload"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ice_ee_getfile" {
  name = "ice-ee-getfile"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "load_balancer" {
  name = "load-balancer"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "api_gateway" {
  name = "api-gateway"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "claim_attachment_service" {
  name = "claim-attachment-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "healthedge-transaction-manager" {
  name = "healthedge-transaction-manager"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "user_management_service" {
  name = "user-management-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "gis_s3_access" {
  name = "gis-s3-access"

  image_scanning_configuration {
    scan_on_push = true
  }
}

#resource "aws_ecr_repository" "ice_load_835_transmission_details" {
#  name = "ice-load-835-transmission-details"
#
#  image_scanning_configuration {
#    scan_on_push = true
#  }
#}

resource "aws_ecr_repository" "core_fax_service" {
  name = "core-fax-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "cv-dd-agent" {
  name = "cv-dd-agent"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ice_restart_claims" {
  name = "ice-restart-claims"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "benefits-svc" {
  name = "benefits-svc"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "group-account-service" {
  name = "group-account-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "member-service" {
  name = "member-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "issue-tracking-service" {
  name = "issue-tracking-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ivr-service" {
  name = "ivr-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ivr-facade-service" {
  name = "ivr-facade-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "claim360_portal" {
  name = "claim360-portal"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "cpq360_portal" {
  name = "cpq360-portal"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "claims-he-svc" {
  name = "claims-he-svc"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "concourse-veracode" {
  name = "concourse-veracode"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "cost-estimator-svc" {
  name = "cost-estimator-svc"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "provider-experience" {
  name = "provider-experience"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "broker-experience" {
  name = "broker-experience"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "broker-employer-experience" {
  name = "broker-employer-experience"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "employer-experience" {
  name = "employer-experience"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "lifesmile_service" {
  name = "lifesmile-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ice-get-id" {
  name = "ice-get-id"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "healthedge-message-bridge" {
  name = "healthedge-message-bridge"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "airflow" {
  name = "airflow"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nomad-client-rds" {
  name = "nomad-client-rds"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nomad-client-qlik" {
  name = "nomad-client-qlik"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nomad-client-hedns" {
  name = "nomad-client-hedns"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "icegateway_realtime_proxy_he_svc" {
  name = "icegateway-realtime-proxy-he-svc"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nomad-enterprise-scheduler" {
  name = "nomad-enterprise-scheduler"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "git2consul" {
  name = "git2consul"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "document_service" {
  name = "document-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nomad-concourse-pipeline" {
  name = "nomad-concourse-pipeline"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "client-onboarding-service" {
  name = "client-onboarding-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nomad-sftp-user" {
  name = "nomad-sftp-user"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nomad-seed-data" {
  name = "nomad-seed-data"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nomad-cognito" {
  name = "nomad-cognito"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "client-management-portal" {
  name = "client-management-portal"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nomad-vulcan" {
  name = "nomad-vulcan"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "document_management_service" {
  name = "document-management-service"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nginx-emma" {
  name = "nginx-emma"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nomad-tenant-dms" {
  name = "nomad-tenant-dms"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nomad-data" {
  name = "nomad-data"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "document_reader" {
  name = "document-reader"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nomad-client-cognito" {
  name = "nomad-client-cognito"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nomad-tenant-cognito" {
  name = "nomad-tenant-cognito"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "extracts-service" {
  name = "extracts-service"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ice-cleanup" {
  name = "ice-cleanup"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nomad-enterprise-scheduler-helloworld" {
  name = "nomad-enterprise-scheduler-helloworld"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "concourse-db-build" {
  name = "concourse-db-build"
  image_scanning_configuration {
    scan_on_push = true
  }
}
resource "aws_ecr_repository" "extracts-he-service" {
  name = "extracts-he-service"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "accounting-legacyar-svc" {
  name = "accounting-legacyar-svc"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "qa_dashboard" {
  name = "qa-dashboard"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "helloworld_django" {
  name = "helloworld-django"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "liquibase" {
  name = "liquibase"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ks_elastic_monitor" {
  name = "elastic-monitor"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nginx_mule_lb" {
  name = "nginx-mule-lb"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "cognito-dr-image" {
  name = "cognito-dr-image"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "members-he-svc" {
  name = "members-he-svc"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "enrollment-he-svc" {
  name = "enrollment-he-svc"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "benefit_explanation_portal" {
  name = "benefit_explanation-portal"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "benefit_explanation_svc" {
  name = "benefit-explanation-svc"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "clovercall_scan" {
  name = "clover-call-scan"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "negativenpfreturn_scan" {
  name = "negativenpfreturn-scan"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "s3ftpcall_scan" {
  name = "s3ftp-call-scan"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ftps3call_scan" {
  name = "ftps3-call-scan"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "cob_loader_service" {
  name = "cob-loader-service"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "funding_adjustment_service" {
  name = "funding-adjustment-service"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "springboot_core_proxy" {
  name = "springboot-core-proxy"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "qa_webautomation_dashboard" {
  name = "qa_webautomation_dashboard"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "practitioner_he_svc" {
  name = "practitioner_he_svc"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "practitioner_he_integration" {
  name = "practitioner_he_integration"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "broker_he_integration" {
  name = "broker_he_integration"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nomad_mule_restart" {
  name = "nomad-mule-restart"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "benefits_plan_service" {
  name = "benefits-plan-service"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "broker_he_svc" {
  name = "broker-he-svc"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "core_service_code_cache_service" {
  name = "core-service-code-cache-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "accumulator_he_svc" {
  name = "accumulator-he-svc"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "qtc_translation_service" {
  name = "qtc-translation-service"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nginx_gump" {
  name = "nginx-gump"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "core_faxback_service" {
  name = "core-faxback-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "finance_admin_he_svc" {
  name = "finance-admin-he-svc"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "correspondence_he_proxy_svc" {
  name = "correspondence-he-proxy-svc"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "cloudwatch_log_miner_service" {
  name = "cloudwatch-log-miner-service"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nomad-portals-ingress" {
  name = "nomad-portals-ingress"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nginx_plus" {
  name = "nginx-plus"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nginx_alpine" {
  name = "nginx-alpine"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "translation_portal" {
  name = "translation-portal"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "quote_to_card_svc" {
  name = "quote-to-card-svc"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "underwriting_he_svc" {
  name = "underwriting-he-svc"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "dataquality_service" {
  name = "dataquality-service"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "data_generation_service" {
  name = "data-generation-service"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "dataquality_he_service" {
  name = "dataquality-he-service"
  image_scanning_configuration {
    scan_on_push = true
  }
}


resource "aws_ecr_repository" "ksdw_he_svc" {
  name = "ksdw-he-svc"
  image_scanning_configuration {
    scan_on_push = true
  }
}


resource "aws_ecr_repository" "dataquality_portal" {
  name = "dataquality-portal"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "crosswalk-service" {
  name = "crosswalk-service"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "core_sftp_transfer_service" {
  name = "core-sftp-transfer-service"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "core_s3_bucket_notify" {
  name = "core-s3-bucket-notify"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "strongdm_relay" {
  name = "strongdm-relay"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "correspondence_portal" {
  name = "correspondence-portal"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ice_generate_834_outbound" {
  name = "ice-generate-834-outbound"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "slack_notification_resource" {
  name = "slack-notification-resource"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ksedw_load_all_dims" {
  name = "ksedw_load_all_dims"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "data_encara_service" {
  name = "data-encara-service"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ice_extracts" {
  name = "ice-extracts"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "portals_document_svc" {
  name = "portals-document-svc"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "correspondence_reports" {
  name = "correspondence-reports"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "card_payment_service" {
  name = "card-payment-service"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "portals-cms-svc" {
  name = "portals-cms-svc"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "edi_generate837dental_service" {
  name = "edi-generate837dental-service"
  image_scanning_configuration {
    scan_on_push = true
  }
}


resource "aws_ecr_repository" "claims-edi-he-svc" {
  name = "claims-edi-he-svc"
  image_scanning_configuration {
    scan_on_push = true
  }
}


resource "aws_ecr_repository" "ice-generate-edi-svc" {
  name = "ice-generate-edi-svc"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "concourse-git-bitbucket-pr" {
  name = "concourse-git-bitbucket-pr"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "kafka-consumer-rabbit" {
  name = "kafka_consumer_rabbit"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "era835-edi-he-svc" {
  name = "era835-edi-he-svc"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "kafka-consumer-message-search" {
  name = "kafka_consumer_message_search"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "portals-ddpa-cahps" {
  name = "portals-ddpa-cahps"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ice_refresh_snapshot" {
  name = "ice-refresh-snapshot"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ksedw-service" {
  name = "ksedw-service"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ksedw-extracts" {
  name = "ksedw-extracts"
  image_scanning_configuration {
    scan_on_push = true
  }
}
resource "aws_ecr_repository" "ci-alpine-lambda-java8" {
  name = "ci-alpine-lambda-java8"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "kafka-monitoring" {
  name = "kafka-monitoring"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "individual_renewals_svc" {
  name = "individual-renewals-svc"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "keyspring-storefront-portal" {
  name = "keyspring-storefront-portal"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ks-springboot-base-java17" {
  name = "ks-springboot-base-java17"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "filebeat" {
  name = "filebeat"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "selfservice-extract-svc" {
  name = "selfservice-extract-svc"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "odl-ddpa-input-file-spring-boot" {
  name = "odl-ddpa-input-file-spring-boot"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "selfservice-extract" {
  name = "selfservice-extract"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "odl-provider-consumer-mongo-sink" {
  name = "odl-provider-consumer-mongo-sink"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "odl-npf-provider-aggregation-kstream" {
  name = "odl-npf-provider-aggregation-kstream"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "datasolutions_reporting_service" {
  name = "datasolutions-reporting"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "kafka-member-producer" {
  name = "kafka-member-producer"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "kafka-id-card-consumer" {
  name = "kafka-id-card-consumer"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "id-card-service" {
  name = "id-card-service"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "member-search-svc" {
  name = "member-search-svc"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "practitioner_location_svc" {
  name = "practitioner_location_svc"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "odl-npf-provider-service" {
  name = "odl-npf-provider-service"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "core_ai_service" {
  name = "core-ai-svc"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "core_ai_claim_puller_service" {
  name = "core-ai-claim-puller-svc"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ddpa-national-inquiry" {
  name = "ddpa-national-inquiry"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "benefits-verification-svc" {
  name = "benefits-verification-svc"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "concourseci-build-java17" {
  name = "concourseci-build-java17"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "experience_renewals_svc" {
  name = "experience-renewals-svc"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "cob-svc" {
  name = "cob-svc"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "melissa_data" {
  name = "melissa-data"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "nodejs-18" {
  name = "nodejs-18"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "portals-report-svc" {
  name = "portals-report-svc"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "practitioner_load_svc" {
  name = "practitioner-load-svc"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "odl-member-aggregation-kstream" {
  name = "odl-member-aggregation-kstream"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "odl-member-consumer-mongo-sink" {
  name = "odl-member-consumer-mongo-sink"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "odl-member-service" {
  name = "odl-member-service"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "batch-automation-svc" {
  name = "batch-automation-svc"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "benefits-reporting-service" {
  name = "benefits-reporting-service"
  image_scanning_configuration {
    scan_on_push = true
  }
}
