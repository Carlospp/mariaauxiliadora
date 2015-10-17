class InternalController < ApplicationController
  layout 'intranet'
  before_filter :authenticate_user!
  def intranet
  end
end
