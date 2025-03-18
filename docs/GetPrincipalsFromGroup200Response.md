# RBACApiClient::GetPrincipalsFromGroup200Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'insights-rbac-api-client'

RBACApiClient::GetPrincipalsFromGroup200Response.openapi_one_of
# =>
# [
#   :'PrincipalPagination',
#   :'ServiceAccountInGroupResponse',
#   :'ServiceAccountPagination'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'insights-rbac-api-client'

RBACApiClient::GetPrincipalsFromGroup200Response.build(data)
# => #<PrincipalPagination:0x00007fdd4aab02a0>

RBACApiClient::GetPrincipalsFromGroup200Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PrincipalPagination`
- `ServiceAccountInGroupResponse`
- `ServiceAccountPagination`
- `nil` (if no type matches)

