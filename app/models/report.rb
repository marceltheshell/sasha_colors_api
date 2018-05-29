class Report
  include Mongoid::Document

  field :notes, type: String
  field :color, type: BigDecimal

  embedded_in :user
end
