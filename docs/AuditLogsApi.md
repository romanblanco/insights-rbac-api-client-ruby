# RBACApiClient::AuditLogsApi

All URIs are relative to *https://console.redhat.com/api/rbac/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_auditlogs**](AuditLogsApi.md#get_auditlogs) | **GET** /auditlogs/ |  |


## get_auditlogs

> <AuditLogPagination> get_auditlogs(opts)



A list of all of the Admin User's actions logged in Audit Logs

### Examples

```ruby
require 'time'
require 'insights-rbac-api-client'
# setup authorization
RBACApiClient.configure do |config|
  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RBACApiClient::AuditLogsApi.new
opts = {
  limit: 56, # Integer | Parameter for selecting the amount of data returned.
  offset: 56, # Integer | Parameter for selecting the offset of data.
  order_by: 'id' # String | Parameter for ordering resource by database id so that latest actions appear first
}

begin
  
  result = api_instance.get_auditlogs(opts)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling AuditLogsApi->get_auditlogs: #{e}"
end
```

#### Using the get_auditlogs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuditLogPagination>, Integer, Hash)> get_auditlogs_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_auditlogs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuditLogPagination>
rescue RBACApiClient::ApiError => e
  puts "Error when calling AuditLogsApi->get_auditlogs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Parameter for selecting the amount of data returned. | [optional][default to 10] |
| **offset** | **Integer** | Parameter for selecting the offset of data. | [optional][default to 0] |
| **order_by** | **String** | Parameter for ordering resource by database id so that latest actions appear first | [optional] |

### Return type

[**AuditLogPagination**](AuditLogPagination.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

