=begin
#Role Based Access Control

#The API for Role Based Access Control.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0-SNAPSHOT

=end

require 'cgi'

module RBACApiClient
  class CrossAccountRequestApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a cross account request
    # @param cross_account_request_in [CrossAccountRequestIn] CrossAccountRequest to create
    # @param [Hash] opts the optional parameters
    # @return [CrossAccountRequestOut]
    def create_cross_account_requests(cross_account_request_in, opts = {})
      data, _status_code, _headers = create_cross_account_requests_with_http_info(cross_account_request_in, opts)
      data
    end

    # Create a cross account request
    # @param cross_account_request_in [CrossAccountRequestIn] CrossAccountRequest to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(CrossAccountRequestOut, Integer, Hash)>] CrossAccountRequestOut data, response status code and response headers
    def create_cross_account_requests_with_http_info(cross_account_request_in, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CrossAccountRequestApi.create_cross_account_requests ...'
      end
      # verify the required parameter 'cross_account_request_in' is set
      if @api_client.config.client_side_validation && cross_account_request_in.nil?
        fail ArgumentError, "Missing the required parameter 'cross_account_request_in' when calling CrossAccountRequestApi.create_cross_account_requests"
      end
      # resource path
      local_var_path = '/cross-account-requests/'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cross_account_request_in)

      # return_type
      return_type = opts[:debug_return_type] || 'CrossAccountRequestOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basic_auth']

      new_options = opts.merge(
        :operation => :"CrossAccountRequestApi.create_cross_account_requests",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CrossAccountRequestApi#create_cross_account_requests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a cross account request
    # @param uuid [String] ID of cross account request to get
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query_by Parameter for filtering resource by either a user&#39;s ID, or a client&#39;s org. The default value is target_org.
    # @option opts [String] :account Parameter for filtering resource by an account number. Value can be a comma-separated list of ids. To be used in tandem with ?query_by&#x3D;user_id to further filter a user&#39;s requests by account number.
    # @option opts [String] :approved_only Parameter for filtering resource which have been approved.
    # @return [CrossAccountRequestDetail]
    def get_cross_account_request(uuid, opts = {})
      data, _status_code, _headers = get_cross_account_request_with_http_info(uuid, opts)
      data
    end

    # Get a cross account request
    # @param uuid [String] ID of cross account request to get
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query_by Parameter for filtering resource by either a user&#39;s ID, or a client&#39;s org. The default value is target_org.
    # @option opts [String] :account Parameter for filtering resource by an account number. Value can be a comma-separated list of ids. To be used in tandem with ?query_by&#x3D;user_id to further filter a user&#39;s requests by account number.
    # @option opts [String] :approved_only Parameter for filtering resource which have been approved.
    # @return [Array<(CrossAccountRequestDetail, Integer, Hash)>] CrossAccountRequestDetail data, response status code and response headers
    def get_cross_account_request_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CrossAccountRequestApi.get_cross_account_request ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling CrossAccountRequestApi.get_cross_account_request"
      end
      allowable_values = ["user_id", "target_org"]
      if @api_client.config.client_side_validation && opts[:'query_by'] && !allowable_values.include?(opts[:'query_by'])
        fail ArgumentError, "invalid value for \"query_by\", must be one of #{allowable_values}"
      end
      allowable_values = ["true"]
      if @api_client.config.client_side_validation && opts[:'approved_only'] && !allowable_values.include?(opts[:'approved_only'])
        fail ArgumentError, "invalid value for \"approved_only\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/cross-account-requests/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query_by'] = opts[:'query_by'] if !opts[:'query_by'].nil?
      query_params[:'account'] = opts[:'account'] if !opts[:'account'].nil?
      query_params[:'approved_only'] = opts[:'approved_only'] if !opts[:'approved_only'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CrossAccountRequestDetail'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basic_auth']

      new_options = opts.merge(
        :operation => :"CrossAccountRequestApi.get_cross_account_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CrossAccountRequestApi#get_cross_account_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the cross account requests for a user or account
    # By default, responses are sorted in ascending order by created_at
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Parameter for selecting the amount of data returned. (default to 10)
    # @option opts [Integer] :offset Parameter for selecting the offset of data. (default to 0)
    # @option opts [String] :query_by Parameter for filtering resource by either a user&#39;s ID, or a client&#39;s org. The default value is target_org.
    # @option opts [String] :account Parameter for filtering resource by an account number. Value can be a comma-separated list of ids. To be used in tandem with ?query_by&#x3D;user_id to further filter a user&#39;s requests by account number.
    # @option opts [String] :org_id Parameter for filtering resource by an org id. Value can be a comma-separated list of ids. To be used in tandem with ?query_by&#x3D;user_id to further filter a user&#39;s requests by org id.
    # @option opts [String] :approved_only Parameter for filtering resource which have been approved.
    # @option opts [String] :status Parameter for filtering resource based on status.
    # @option opts [String] :order_by Parameter for ordering by field. For inverse ordering, use &#39;-&#39;, e.g. ?order_by&#x3D;-start_date.
    # @return [CrossAccountRequestPagination]
    def list_cross_account_requests(opts = {})
      data, _status_code, _headers = list_cross_account_requests_with_http_info(opts)
      data
    end

    # List the cross account requests for a user or account
    # By default, responses are sorted in ascending order by created_at
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Parameter for selecting the amount of data returned. (default to 10)
    # @option opts [Integer] :offset Parameter for selecting the offset of data. (default to 0)
    # @option opts [String] :query_by Parameter for filtering resource by either a user&#39;s ID, or a client&#39;s org. The default value is target_org.
    # @option opts [String] :account Parameter for filtering resource by an account number. Value can be a comma-separated list of ids. To be used in tandem with ?query_by&#x3D;user_id to further filter a user&#39;s requests by account number.
    # @option opts [String] :org_id Parameter for filtering resource by an org id. Value can be a comma-separated list of ids. To be used in tandem with ?query_by&#x3D;user_id to further filter a user&#39;s requests by org id.
    # @option opts [String] :approved_only Parameter for filtering resource which have been approved.
    # @option opts [String] :status Parameter for filtering resource based on status.
    # @option opts [String] :order_by Parameter for ordering by field. For inverse ordering, use &#39;-&#39;, e.g. ?order_by&#x3D;-start_date.
    # @return [Array<(CrossAccountRequestPagination, Integer, Hash)>] CrossAccountRequestPagination data, response status code and response headers
    def list_cross_account_requests_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CrossAccountRequestApi.list_cross_account_requests ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CrossAccountRequestApi.list_cross_account_requests, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CrossAccountRequestApi.list_cross_account_requests, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling CrossAccountRequestApi.list_cross_account_requests, must be greater than or equal to 0.'
      end

      allowable_values = ["user_id", "target_org"]
      if @api_client.config.client_side_validation && opts[:'query_by'] && !allowable_values.include?(opts[:'query_by'])
        fail ArgumentError, "invalid value for \"query_by\", must be one of #{allowable_values}"
      end
      allowable_values = ["true"]
      if @api_client.config.client_side_validation && opts[:'approved_only'] && !allowable_values.include?(opts[:'approved_only'])
        fail ArgumentError, "invalid value for \"approved_only\", must be one of #{allowable_values}"
      end
      allowable_values = ["pending", "approved", "denied", "cancelled", "expired"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      allowable_values = ["request_id", "start_date", "end_date", "created", "modified", "status"]
      if @api_client.config.client_side_validation && opts[:'order_by'] && !allowable_values.include?(opts[:'order_by'])
        fail ArgumentError, "invalid value for \"order_by\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/cross-account-requests/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'query_by'] = opts[:'query_by'] if !opts[:'query_by'].nil?
      query_params[:'account'] = opts[:'account'] if !opts[:'account'].nil?
      query_params[:'org_id'] = opts[:'org_id'] if !opts[:'org_id'].nil?
      query_params[:'approved_only'] = opts[:'approved_only'] if !opts[:'approved_only'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'order_by'] = opts[:'order_by'] if !opts[:'order_by'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CrossAccountRequestPagination'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basic_auth']

      new_options = opts.merge(
        :operation => :"CrossAccountRequestApi.list_cross_account_requests",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CrossAccountRequestApi#list_cross_account_requests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch a cross account request
    # Patch the start_date/end_date/roles of an existing request. Could be used by TAM requestor to cancel request or target account admin to approve/deny request.
    # @param uuid [String] ID of cross account request to get
    # @param cross_account_request_patch [CrossAccountRequestPatch] Updates to CrossAccountRequest
    # @param [Hash] opts the optional parameters
    # @return [CrossAccountRequestDetail]
    def patch_cross_account_request(uuid, cross_account_request_patch, opts = {})
      data, _status_code, _headers = patch_cross_account_request_with_http_info(uuid, cross_account_request_patch, opts)
      data
    end

    # Patch a cross account request
    # Patch the start_date/end_date/roles of an existing request. Could be used by TAM requestor to cancel request or target account admin to approve/deny request.
    # @param uuid [String] ID of cross account request to get
    # @param cross_account_request_patch [CrossAccountRequestPatch] Updates to CrossAccountRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<(CrossAccountRequestDetail, Integer, Hash)>] CrossAccountRequestDetail data, response status code and response headers
    def patch_cross_account_request_with_http_info(uuid, cross_account_request_patch, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CrossAccountRequestApi.patch_cross_account_request ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling CrossAccountRequestApi.patch_cross_account_request"
      end
      # verify the required parameter 'cross_account_request_patch' is set
      if @api_client.config.client_side_validation && cross_account_request_patch.nil?
        fail ArgumentError, "Missing the required parameter 'cross_account_request_patch' when calling CrossAccountRequestApi.patch_cross_account_request"
      end
      # resource path
      local_var_path = '/cross-account-requests/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cross_account_request_patch)

      # return_type
      return_type = opts[:debug_return_type] || 'CrossAccountRequestDetail'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basic_auth']

      new_options = opts.merge(
        :operation => :"CrossAccountRequestApi.patch_cross_account_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CrossAccountRequestApi#patch_cross_account_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a cross account request
    # For TAM requestor to update the start_date/end_date/roles of an existing cross account request.
    # @param uuid [String] ID of cross account request to get
    # @param cross_account_request_update_in [CrossAccountRequestUpdateIn] Updates to CrossAccountRequest
    # @param [Hash] opts the optional parameters
    # @return [CrossAccountRequestDetail]
    def put_cross_account_request(uuid, cross_account_request_update_in, opts = {})
      data, _status_code, _headers = put_cross_account_request_with_http_info(uuid, cross_account_request_update_in, opts)
      data
    end

    # Update a cross account request
    # For TAM requestor to update the start_date/end_date/roles of an existing cross account request.
    # @param uuid [String] ID of cross account request to get
    # @param cross_account_request_update_in [CrossAccountRequestUpdateIn] Updates to CrossAccountRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<(CrossAccountRequestDetail, Integer, Hash)>] CrossAccountRequestDetail data, response status code and response headers
    def put_cross_account_request_with_http_info(uuid, cross_account_request_update_in, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CrossAccountRequestApi.put_cross_account_request ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling CrossAccountRequestApi.put_cross_account_request"
      end
      # verify the required parameter 'cross_account_request_update_in' is set
      if @api_client.config.client_side_validation && cross_account_request_update_in.nil?
        fail ArgumentError, "Missing the required parameter 'cross_account_request_update_in' when calling CrossAccountRequestApi.put_cross_account_request"
      end
      # resource path
      local_var_path = '/cross-account-requests/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cross_account_request_update_in)

      # return_type
      return_type = opts[:debug_return_type] || 'CrossAccountRequestDetail'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basic_auth']

      new_options = opts.merge(
        :operation => :"CrossAccountRequestApi.put_cross_account_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CrossAccountRequestApi#put_cross_account_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
