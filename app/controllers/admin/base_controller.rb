class Admin::BaseController < ApplicationController

  self.abstract!

  http_basic_authenticate_with name: ENV["ADMIN_USERNAME"], password: ENV["ADMIN_PASSWORD"]

end