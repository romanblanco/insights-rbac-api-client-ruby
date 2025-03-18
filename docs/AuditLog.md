# RBACApiClient::AuditLog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | **String** |  | [optional] |
| **principal_username** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **resource_type** | **String** |  | [optional] |
| **action** | **String** |  | [optional] |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::AuditLog.new(
  created: null,
  principal_username: user123,
  description: user abc added to group: 1234,
  resource_type: group,
  action: add
)
```

