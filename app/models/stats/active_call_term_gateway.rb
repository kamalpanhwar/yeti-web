# == Schema Information
#
# Table name: stats.active_call_term_gateways
#
#  id         :integer          not null, primary key
#  gateway_id :integer          not null
#  count      :integer          not null
#  created_at :datetime
#

class Stats::ActiveCallTermGateway   < Stats::Base
  self.table_name = "stats.active_call_term_gateways"
  belongs_to :gateway


  include ::Chart
  self.chart_entity_column = :gateway_id
  self.chart_entity_klass = Gateway

end
