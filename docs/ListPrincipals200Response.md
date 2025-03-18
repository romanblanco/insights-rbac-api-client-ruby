# RBACApiClient::ListPrincipals200Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'insights-rbac-api-client'

RBACApiClient::ListPrincipals200Response.openapi_one_of
# =>
# [
#   :'AllPrincipalsPagination',
#   :'PrincipalPagination',
#   :'ServiceAccountPagination'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'insights-rbac-api-client'

RBACApiClient::ListPrincipals200Response.build(data)
# => #<AllPrincipalsPagination:0x00007fdd4aab02a0>

RBACApiClient::ListPrincipals200Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AllPrincipalsPagination`
- `PrincipalPagination`
- `ServiceAccountPagination`
- `nil` (if no type matches)

