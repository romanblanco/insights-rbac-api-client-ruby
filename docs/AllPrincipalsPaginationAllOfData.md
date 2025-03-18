# RBACApiClient::AllPrincipalsPaginationAllOfData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_accounts** | [**Array&lt;ServiceAccount&gt;**](ServiceAccount.md) |  | [optional] |
| **users** | [**Array&lt;AllPrincipalsPaginationAllOfDataUsers&gt;**](AllPrincipalsPaginationAllOfDataUsers.md) |  | [optional] |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::AllPrincipalsPaginationAllOfData.new(
  service_accounts: null,
  users: null
)
```

