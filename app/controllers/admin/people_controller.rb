# frozen_string_literal: true

module Admin
  class PeopleController < ApplicationController
    before_action :set_person, only: %i[show edit update destroy]

    def index
      @people = Person.all
    end

    def show; end

    def new
      @person = Person.new
    end

    def edit; end

    def create
      @person = Person.new(person_params)

      if @person.save
        redirect_to admin_person_path(@person),
                    notice: 'Person was successfully end created.'
      else
        render :new
      end
    end

    def update
      if @person.update(person_params)
        redirect_to admin_person_path(@person),
                    notice: 'Person was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @person.destroy
      redirect_to admin_people_url, notice: 'Person was successfully destroyed.'
    end

    private

    def set_person
      @person = Person.find(params[:id])
    end

    def person_params
      params.require(:person).permit(
        :email
      )
    end
  end
end
