class EmployeesDatatable < RailsDatatables
  def initialize(view)
    @model_name = Employee
    @columns = [employees.first_name, employees.employee_code]
    @searchable_columns = [employees.first_name]
    super(view)
  end
   
private
  def data
      employees.map do |employee|
        [
          # comma separated list of the values for each cell of a table row'
          employee.first_name,
          employee.employee_code
        ]
      end
  end

  def employees
    @employees ||= fetch_records
  end

  def get_raw_records
    # insert query here
    Employee.all
  end
    
  def get_raw_record_count
    search_records(get_raw_records).count
  end    
  # ==== Insert 'presenter'-like methods below if necessary
end
