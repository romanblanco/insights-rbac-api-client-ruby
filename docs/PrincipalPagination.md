# RBACApiClient::PrincipalPagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **links** | [**PaginationLinks**](PaginationLinks.md) |  | [optional] |
| **data** | [**Array&lt;PrincipalPaginationAllOfData&gt;**](PrincipalPaginationAllOfData.md) |  |  |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::PrincipalPagination.new(
  meta: null,
  links: null,
  data: null
)
```

