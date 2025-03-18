=begin
#Role Based Access Control

#The API for Role Based Access Control.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.13.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for RBACApiClient::AuditLogsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AuditLogsApi' do
  before do
    # run before each test
    @api_instance = RBACApiClient::AuditLogsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuditLogsApi' do
    it 'should create an instance of AuditLogsApi' do
      expect(@api_instance).to be_instance_of(RBACApiClient::AuditLogsApi)
    end
  end

  # unit tests for get_auditlogs
  # A list of all of the Admin User&#39;s actions logged in Audit Logs
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Parameter for selecting the amount of data returned.
  # @option opts [Integer] :offset Parameter for selecting the offset of data.
  # @option opts [String] :order_by Parameter for ordering resource by database id so that latest actions appear first
  # @return [AuditLogPagination]
  describe 'get_auditlogs test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
