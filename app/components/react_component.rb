# frozen_string_literal: true

class ReactComponent < ViewComponent::Base
  attr_reader :component, :raw_props

  def initialize(component, raw_props: {})
    @component = component
    @raw_props = raw_props
  end

  def call
    helpers.tag.div(
      '',
      data: {
        react_component: component,
        props:
      }
    )
  end

  private

  def props
    raw_props
  end
end
