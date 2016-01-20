class ApiController < ApplicationController
  # Don't worry about CSRF tokens for this
  skip_before_filter :verify_authenticity_token

  before_filter :cors_preflight_check
  after_filter :cors_set_access_control_headers

  def allowed_cors_methods
    "GET, POST, PATCH, PUT, DELETE, OPTIONS, HEAD"
  end

  # For all responses in this controller, return the CORS access control headers.
  def cors_set_access_control_headers
    headers["Access-Control-Allow-Origin"]  = "*"
    headers["Access-Control-Allow-Methods"] = allowed_cors_methods
    headers["Access-Control-Max-Age"]       = "1728000"
  end

  # If this is a preflight OPTIONS request, then short-circuit the
  # request, return only the necessary headers and return an empty
  # text/plain.
  def cors_preflight_check
    headers["Access-Control-Allow-Origin"]  = "*"
    headers["Access-Control-Allow-Methods"] = allowed_cors_methods
    headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-Prototype-Version, Content-Type"
    headers["Access-Control-Max-Age"]       = "1728000"
  end
end
