# frozen_string_literal: true

module Admin
  class ApplicationController < ::ApplicationController
    before_action :authenticate_person!
    before_action :authenticate_admin

    def authenticate_admin
      redirect_back fallback_location: root_path unless current_person.admin?
    end
  end
end
