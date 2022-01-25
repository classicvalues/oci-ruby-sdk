# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Parameters needed to create a new Dataset. A Dataset allows a user to describe the data source that provides the Records and how Annotations should be applied to the Records.
  class DataLabelingService::Models::CreateDatasetDetails
    # A user-friendly display name for the resource.
    # @return [String]
    attr_accessor :display_name

    # A user provided description of the dataset
    # @return [String]
    attr_accessor :description

    # **[Required]** The OCID of the compartment of the resource.
    # @return [String]
    attr_accessor :compartment_id

    # **[Required]** The annotation format name required for labeling records.
    # @return [String]
    attr_accessor :annotation_format

    # This attribute is required.
    # @return [OCI::DataLabelingService::Models::DatasetSourceDetails]
    attr_accessor :dataset_source_details

    # This attribute is required.
    # @return [OCI::DataLabelingService::Models::DatasetFormatDetails]
    attr_accessor :dataset_format_details

    # @return [OCI::DataLabelingService::Models::InitialRecordGenerationConfiguration]
    attr_accessor :initial_record_generation_configuration

    # This attribute is required.
    # @return [OCI::DataLabelingService::Models::LabelSet]
    attr_accessor :label_set

    # The labeling instructions for human labelers in rich text format
    # @return [String]
    attr_accessor :labeling_instructions

    # A simple key-value pair that is applied without any predefined name, type, or scope. It exists for cross-compatibility only.
    # For example: `{\"bar-key\": \"value\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # The defined tags for this resource. Each key is predefined and scoped to a namespace.
    # For example: `{\"foo-namespace\": {\"bar-key\": \"value\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'displayName',
        'description': :'description',
        'compartment_id': :'compartmentId',
        'annotation_format': :'annotationFormat',
        'dataset_source_details': :'datasetSourceDetails',
        'dataset_format_details': :'datasetFormatDetails',
        'initial_record_generation_configuration': :'initialRecordGenerationConfiguration',
        'label_set': :'labelSet',
        'labeling_instructions': :'labelingInstructions',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'String',
        'description': :'String',
        'compartment_id': :'String',
        'annotation_format': :'String',
        'dataset_source_details': :'OCI::DataLabelingService::Models::DatasetSourceDetails',
        'dataset_format_details': :'OCI::DataLabelingService::Models::DatasetFormatDetails',
        'initial_record_generation_configuration': :'OCI::DataLabelingService::Models::InitialRecordGenerationConfiguration',
        'label_set': :'OCI::DataLabelingService::Models::LabelSet',
        'labeling_instructions': :'String',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :annotation_format The value to assign to the {#annotation_format} property
    # @option attributes [OCI::DataLabelingService::Models::DatasetSourceDetails] :dataset_source_details The value to assign to the {#dataset_source_details} property
    # @option attributes [OCI::DataLabelingService::Models::DatasetFormatDetails] :dataset_format_details The value to assign to the {#dataset_format_details} property
    # @option attributes [OCI::DataLabelingService::Models::InitialRecordGenerationConfiguration] :initial_record_generation_configuration The value to assign to the {#initial_record_generation_configuration} property
    # @option attributes [OCI::DataLabelingService::Models::LabelSet] :label_set The value to assign to the {#label_set} property
    # @option attributes [String] :labeling_instructions The value to assign to the {#labeling_instructions} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.annotation_format = attributes[:'annotationFormat'] if attributes[:'annotationFormat']

      raise 'You cannot provide both :annotationFormat and :annotation_format' if attributes.key?(:'annotationFormat') && attributes.key?(:'annotation_format')

      self.annotation_format = attributes[:'annotation_format'] if attributes[:'annotation_format']

      self.dataset_source_details = attributes[:'datasetSourceDetails'] if attributes[:'datasetSourceDetails']

      raise 'You cannot provide both :datasetSourceDetails and :dataset_source_details' if attributes.key?(:'datasetSourceDetails') && attributes.key?(:'dataset_source_details')

      self.dataset_source_details = attributes[:'dataset_source_details'] if attributes[:'dataset_source_details']

      self.dataset_format_details = attributes[:'datasetFormatDetails'] if attributes[:'datasetFormatDetails']

      raise 'You cannot provide both :datasetFormatDetails and :dataset_format_details' if attributes.key?(:'datasetFormatDetails') && attributes.key?(:'dataset_format_details')

      self.dataset_format_details = attributes[:'dataset_format_details'] if attributes[:'dataset_format_details']

      self.initial_record_generation_configuration = attributes[:'initialRecordGenerationConfiguration'] if attributes[:'initialRecordGenerationConfiguration']

      raise 'You cannot provide both :initialRecordGenerationConfiguration and :initial_record_generation_configuration' if attributes.key?(:'initialRecordGenerationConfiguration') && attributes.key?(:'initial_record_generation_configuration')

      self.initial_record_generation_configuration = attributes[:'initial_record_generation_configuration'] if attributes[:'initial_record_generation_configuration']

      self.label_set = attributes[:'labelSet'] if attributes[:'labelSet']

      raise 'You cannot provide both :labelSet and :label_set' if attributes.key?(:'labelSet') && attributes.key?(:'label_set')

      self.label_set = attributes[:'label_set'] if attributes[:'label_set']

      self.labeling_instructions = attributes[:'labelingInstructions'] if attributes[:'labelingInstructions']

      raise 'You cannot provide both :labelingInstructions and :labeling_instructions' if attributes.key?(:'labelingInstructions') && attributes.key?(:'labeling_instructions')

      self.labeling_instructions = attributes[:'labeling_instructions'] if attributes[:'labeling_instructions']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        display_name == other.display_name &&
        description == other.description &&
        compartment_id == other.compartment_id &&
        annotation_format == other.annotation_format &&
        dataset_source_details == other.dataset_source_details &&
        dataset_format_details == other.dataset_format_details &&
        initial_record_generation_configuration == other.initial_record_generation_configuration &&
        label_set == other.label_set &&
        labeling_instructions == other.labeling_instructions &&
        freeform_tags == other.freeform_tags &&
        defined_tags == other.defined_tags
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines

    # @see the `==` method
    # @param [Object] other the other object to be compared
    def eql?(other)
      self == other
    end

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [display_name, description, compartment_id, annotation_format, dataset_source_details, dataset_format_details, initial_record_generation_configuration, label_set, labeling_instructions, freeform_tags, defined_tags].hash
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            public_method("#{key}=").call(
              attributes[self.class.attribute_map[key]]
                .map { |v| OCI::Internal::Util.convert_to_type(Regexp.last_match(1), v) }
            )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          public_method("#{key}=").call(
            OCI::Internal::Util.convert_to_type(type, attributes[self.class.attribute_map[key]])
          )
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = public_method(attr).call
        next if value.nil? && !instance_variable_defined?("@#{attr}")

        hash[param] = _to_hash(value)
      end
      hash
    end

    private

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
# rubocop:enable Lint/UnneededCopDisableDirective, Metrics/LineLength
