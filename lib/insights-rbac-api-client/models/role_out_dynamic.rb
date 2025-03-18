=begin
#Role Based Access Control

#The API for Role Based Access Control.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.13.0-SNAPSHOT

=end

require 'date'
require 'time'

module RBACApiClient
  class RoleOutDynamic
    attr_accessor :name

    attr_accessor :display_name

    attr_accessor :description

    attr_accessor :uuid

    attr_accessor :created

    attr_accessor :modified

    attr_accessor :policy_count

    attr_accessor :access_count

    attr_accessor :applications

    attr_accessor :system

    attr_accessor :platform_default

    attr_accessor :admin_default

    attr_accessor :groups_in_count

    attr_accessor :groups_in

    attr_accessor :external_role_id

    attr_accessor :external_tenant

    attr_accessor :access

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'display_name' => :'display_name',
        :'description' => :'description',
        :'uuid' => :'uuid',
        :'created' => :'created',
        :'modified' => :'modified',
        :'policy_count' => :'policyCount',
        :'access_count' => :'accessCount',
        :'applications' => :'applications',
        :'system' => :'system',
        :'platform_default' => :'platform_default',
        :'admin_default' => :'admin_default',
        :'groups_in_count' => :'groups_in_count',
        :'groups_in' => :'groups_in',
        :'external_role_id' => :'external_role_id',
        :'external_tenant' => :'external_tenant',
        :'access' => :'access'
      }
    end

    # Returns attribute mapping this model knows about
    def self.acceptable_attribute_map
      attribute_map
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      acceptable_attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'display_name' => :'String',
        :'description' => :'String',
        :'uuid' => :'String',
        :'created' => :'Time',
        :'modified' => :'Time',
        :'policy_count' => :'Integer',
        :'access_count' => :'Integer',
        :'applications' => :'Array<String>',
        :'system' => :'Boolean',
        :'platform_default' => :'Boolean',
        :'admin_default' => :'Boolean',
        :'groups_in_count' => :'Integer',
        :'groups_in' => :'Array<AdditionalGroup>',
        :'external_role_id' => :'String',
        :'external_tenant' => :'String',
        :'access' => :'Array<Access>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'Role',
      :'Timestamped',
      :'UUID'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `RBACApiClient::RoleOutDynamic` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `RBACApiClient::RoleOutDynamic`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'uuid')
        self.uuid = attributes[:'uuid']
      else
        self.uuid = nil
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      else
        self.created = nil
      end

      if attributes.key?(:'modified')
        self.modified = attributes[:'modified']
      else
        self.modified = nil
      end

      if attributes.key?(:'policy_count')
        self.policy_count = attributes[:'policy_count']
      else
        self.policy_count = nil
      end

      if attributes.key?(:'access_count')
        self.access_count = attributes[:'access_count']
      else
        self.access_count = nil
      end

      if attributes.key?(:'applications')
        if (value = attributes[:'applications']).is_a?(Array)
          self.applications = value
        end
      else
        self.applications = nil
      end

      if attributes.key?(:'system')
        self.system = attributes[:'system']
      else
        self.system = false
      end

      if attributes.key?(:'platform_default')
        self.platform_default = attributes[:'platform_default']
      else
        self.platform_default = false
      end

      if attributes.key?(:'admin_default')
        self.admin_default = attributes[:'admin_default']
      else
        self.admin_default = false
      end

      if attributes.key?(:'groups_in_count')
        self.groups_in_count = attributes[:'groups_in_count']
      end

      if attributes.key?(:'groups_in')
        if (value = attributes[:'groups_in']).is_a?(Array)
          self.groups_in = value
        end
      end

      if attributes.key?(:'external_role_id')
        self.external_role_id = attributes[:'external_role_id']
      end

      if attributes.key?(:'external_tenant')
        self.external_tenant = attributes[:'external_tenant']
      end

      if attributes.key?(:'access')
        if (value = attributes[:'access']).is_a?(Array)
          self.access = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @uuid.nil?
        invalid_properties.push('invalid value for "uuid", uuid cannot be nil.')
      end

      if @created.nil?
        invalid_properties.push('invalid value for "created", created cannot be nil.')
      end

      if @modified.nil?
        invalid_properties.push('invalid value for "modified", modified cannot be nil.')
      end

      if @policy_count.nil?
        invalid_properties.push('invalid value for "policy_count", policy_count cannot be nil.')
      end

      if @policy_count < 0
        invalid_properties.push('invalid value for "policy_count", must be greater than or equal to 0.')
      end

      if @access_count.nil?
        invalid_properties.push('invalid value for "access_count", access_count cannot be nil.')
      end

      if @access_count < 0
        invalid_properties.push('invalid value for "access_count", must be greater than or equal to 0.')
      end

      if @applications.nil?
        invalid_properties.push('invalid value for "applications", applications cannot be nil.')
      end

      if @system.nil?
        invalid_properties.push('invalid value for "system", system cannot be nil.')
      end

      if @platform_default.nil?
        invalid_properties.push('invalid value for "platform_default", platform_default cannot be nil.')
      end

      if @admin_default.nil?
        invalid_properties.push('invalid value for "admin_default", admin_default cannot be nil.')
      end

      if !@groups_in_count.nil? && @groups_in_count < 0
        invalid_properties.push('invalid value for "groups_in_count", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @name.nil?
      return false if @uuid.nil?
      return false if @created.nil?
      return false if @modified.nil?
      return false if @policy_count.nil?
      return false if @policy_count < 0
      return false if @access_count.nil?
      return false if @access_count < 0
      return false if @applications.nil?
      return false if @system.nil?
      return false if @platform_default.nil?
      return false if @admin_default.nil?
      return false if !@groups_in_count.nil? && @groups_in_count < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] uuid Value to be assigned
    def uuid=(uuid)
      if uuid.nil?
        fail ArgumentError, 'uuid cannot be nil'
      end

      @uuid = uuid
    end

    # Custom attribute writer method with validation
    # @param [Object] created Value to be assigned
    def created=(created)
      if created.nil?
        fail ArgumentError, 'created cannot be nil'
      end

      @created = created
    end

    # Custom attribute writer method with validation
    # @param [Object] modified Value to be assigned
    def modified=(modified)
      if modified.nil?
        fail ArgumentError, 'modified cannot be nil'
      end

      @modified = modified
    end

    # Custom attribute writer method with validation
    # @param [Object] policy_count Value to be assigned
    def policy_count=(policy_count)
      if policy_count.nil?
        fail ArgumentError, 'policy_count cannot be nil'
      end

      if policy_count < 0
        fail ArgumentError, 'invalid value for "policy_count", must be greater than or equal to 0.'
      end

      @policy_count = policy_count
    end

    # Custom attribute writer method with validation
    # @param [Object] access_count Value to be assigned
    def access_count=(access_count)
      if access_count.nil?
        fail ArgumentError, 'access_count cannot be nil'
      end

      if access_count < 0
        fail ArgumentError, 'invalid value for "access_count", must be greater than or equal to 0.'
      end

      @access_count = access_count
    end

    # Custom attribute writer method with validation
    # @param [Object] applications Value to be assigned
    def applications=(applications)
      if applications.nil?
        fail ArgumentError, 'applications cannot be nil'
      end

      @applications = applications
    end

    # Custom attribute writer method with validation
    # @param [Object] system Value to be assigned
    def system=(system)
      if system.nil?
        fail ArgumentError, 'system cannot be nil'
      end

      @system = system
    end

    # Custom attribute writer method with validation
    # @param [Object] platform_default Value to be assigned
    def platform_default=(platform_default)
      if platform_default.nil?
        fail ArgumentError, 'platform_default cannot be nil'
      end

      @platform_default = platform_default
    end

    # Custom attribute writer method with validation
    # @param [Object] admin_default Value to be assigned
    def admin_default=(admin_default)
      if admin_default.nil?
        fail ArgumentError, 'admin_default cannot be nil'
      end

      @admin_default = admin_default
    end

    # Custom attribute writer method with validation
    # @param [Object] groups_in_count Value to be assigned
    def groups_in_count=(groups_in_count)
      if groups_in_count.nil?
        fail ArgumentError, 'groups_in_count cannot be nil'
      end

      if groups_in_count < 0
        fail ArgumentError, 'invalid value for "groups_in_count", must be greater than or equal to 0.'
      end

      @groups_in_count = groups_in_count
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          display_name == o.display_name &&
          description == o.description &&
          uuid == o.uuid &&
          created == o.created &&
          modified == o.modified &&
          policy_count == o.policy_count &&
          access_count == o.access_count &&
          applications == o.applications &&
          system == o.system &&
          platform_default == o.platform_default &&
          admin_default == o.admin_default &&
          groups_in_count == o.groups_in_count &&
          groups_in == o.groups_in &&
          external_role_id == o.external_role_id &&
          external_tenant == o.external_tenant &&
          access == o.access
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, display_name, description, uuid, created, modified, policy_count, access_count, applications, system, platform_default, admin_default, groups_in_count, groups_in, external_role_id, external_tenant, access].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = RBACApiClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
