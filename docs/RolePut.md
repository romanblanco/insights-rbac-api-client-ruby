# RBACApiClient::RolePut

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **access** | [**Array&lt;Access&gt;**](Access.md) | List of access permissions. This array can be empty. |  |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::RolePut.new(
  name: RoleA,
  display_name: ARoleName,
  description: A description of RoleA,
  access: null
)
```

