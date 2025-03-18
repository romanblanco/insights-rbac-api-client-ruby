# RBACApiClient::CrossAccountRequestPagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **links** | [**PaginationLinks**](PaginationLinks.md) |  | [optional] |
| **data** | [**Array&lt;CrossAccountRequestPaginationAllOfData&gt;**](CrossAccountRequestPaginationAllOfData.md) |  |  |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::CrossAccountRequestPagination.new(
  meta: null,
  links: null,
  data: null
)
```

