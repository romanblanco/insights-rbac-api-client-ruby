# RBACApiClient::ServiceAccountPagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **links** | [**PaginationLinks**](PaginationLinks.md) |  | [optional] |
| **data** | [**Array&lt;ServiceAccount&gt;**](ServiceAccount.md) |  |  |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::ServiceAccountPagination.new(
  meta: null,
  links: null,
  data: null
)
```

