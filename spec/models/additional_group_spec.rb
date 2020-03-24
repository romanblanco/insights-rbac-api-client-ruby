=begin
#Role Based Access Control

#The API for Role Based Access Control.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for RBACApiClient::AdditionalGroup
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AdditionalGroup' do
  before do
    # run before each test
    @instance = RBACApiClient::AdditionalGroup.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AdditionalGroup' do
    it 'should create an instance of AdditionalGroup' do
      expect(@instance).to be_instance_of(RBACApiClient::AdditionalGroup)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "uuid"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end