module Header
  class ShowComponent < ReactComponent
    def initialize(raw_props)
      super('Header', raw_props: raw_props) # rubocop:disable Style/HashSyntax
    end

    def props
      raw_props.merge(
        price: helpers.number_to_currency(raw_props[:price])
      )
    end
  end
end