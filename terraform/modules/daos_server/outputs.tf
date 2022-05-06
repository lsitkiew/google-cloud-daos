/**
 * Copyright 2022 Intel Corporation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


output "access_points" {
  description = "List of DAOS servers to use as access points"
  value       = local.access_points
  depends_on = [
    local.access_points
  ]
}

output "daos_agent_yml" {
  description = "YAML to configure the daos agent. This is typically saved in /etc/daos/daos_agent.yml"
  value       = local.daos_agent_yaml_content
}

output "daos_control_yml" {
  description = "YAML configuring DAOS control. This is typically saved in /etc/daos/daos_control.yml"
  value       = local.daos_control_yaml_content
}

output "daos_config_script" {
  description = "Script to configure the DAOS system. This will format the sytem with dmg -l and optionally create the specified pools."
  value       = local.configure_daos_content
}

output "daos_client_install_script" {
  description = "Script to install the DAOS client package."
  value       = local.daos_client_install_script_content
}

output "daos_ca_secret_id" {
  description = "ID of Secret Manager secret used to store daosCA.tar.gz file generated on first DAOS server instance"
  value       = google_secret_manager_secret.daos_ca.name
}

output "default_service_account_email" {
  description = "Default service account email"
  value       = data.google_compute_default_service_account.default.email
}