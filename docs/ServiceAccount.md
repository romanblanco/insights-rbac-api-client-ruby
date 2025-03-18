# RBACApiClient::ServiceAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** |  |  |
| **type** | **String** |  |  |
| **client_id** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **owner** | **String** |  | [optional] |
| **time_created** | **Integer** |  | [optional] |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::ServiceAccount.new(
  username: service-account-fe593ba0-9c62-013c-1dc2-6aa2427b506a,
  type: null,
  client_id: fe593ba0-9c62-013c-1dc2-6aa2427b506a,
  name: MyServiceAccount,
  description: My new shiny Service Account,
  owner: smithj,
  time_created: 1706100532
)
```

