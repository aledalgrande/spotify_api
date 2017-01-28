class ApplicationController < ActionController::API
  protected

  def safe_render(response)
    code = response.code.to_i

    if code >= 200 && code < 300
      body = response.body

      begin
        yield
      rescue => e
        render json: {
          error: e.message,
          error_body: "Malformed JSON or unexpected structure\n#{body}"
        },
        status: 500
      end
    else
      render json: {
        error: 'Non 200 status received',
        error_body: response.body
      },
      status: 500
    end
  end
end
