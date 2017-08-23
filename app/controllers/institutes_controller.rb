class InstitutesController < ApplicationController
    autocomplete :institute, :name
end
