# RBACApiClient::AllPrincipalsPagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **links** | [**PaginationLinks**](PaginationLinks.md) |  | [optional] |
| **data** | [**AllPrincipalsPaginationAllOfData**](AllPrincipalsPaginationAllOfData.md) |  |  |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::AllPrincipalsPagination.new(
  meta: null,
  links: null,
  data: null
)
```

