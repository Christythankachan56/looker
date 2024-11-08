project_name: "test_new"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }

application: access_key_demo {
  label: "Extension Access Key Demo"
  url: "https://localhost:8080/bundle.js"
  entitlements: {
    use_form_submit: yes
    use_embeds:  yes
    local_storage: yes
    navigation: yes
    new_window: yes
    core_api_methods: ["me", "all_user_attributes", "delete_user_attribute", "create_user_attribute"]
    external_api_urls: ["http://127.0.0.1:3000", "http://localhost:3000"]
    scoped_user_attributes: [ "test_new_access_key_demo_access_key" ]
  }
}
