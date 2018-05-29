class Report
  include Mongoid::Document
  include Mongoid::TimeStamps
  include Mongoid::Paranoia

  field :notes, type: String
  field :color, type: BigDecimal

  embedded_in :user
end
