# RBACApiClient::ServiceAccountInGroupResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **links** | **Object** | The links object for this particular response will be empty, since there is no pagination available for the query parameter | [optional] |
| **data** | **Hash&lt;String, Boolean&gt;** | Object which indicates whether the given service account UUIDs in the query parameter are present in the specified group or not | [optional] |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::ServiceAccountInGroupResponse.new(
  meta: null,
  links: {},
  data: {&quot;dd946f24-cfda-11ee-acb6-7b2702ff4dc8&quot;:true,&quot;3e728bb0-b167-013c-c455-6aa2427b506c&quot;:false}
)
```

