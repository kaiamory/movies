class Api::V1::GraphitiController < ApplicationController
  skip_before_action :authenticate_director!

  include Graphiti::Rails::Responders
end
