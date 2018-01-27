# frozen_string_literal: true

module Admin
  class PermissionsController < ApplicationController
    def index
      @permissions = Permission.all
    end
  end
end
