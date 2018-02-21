module Response
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def json_success(object)
    render json: object, status: :ok
  end

end