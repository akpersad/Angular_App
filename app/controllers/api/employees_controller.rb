class Api::EmployeesController < ApplicationController
  respond_to :json

  def index
    serialized_employees =
      ActiveModel::Serializer::CollectionSerializer.new(Employee.all, each_serializer: EmployeeSerializer)

    render json: serialized_employees
  end
end