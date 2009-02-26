# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def regresar
    session[:ultima_pagina] = request.env["HTTP_REFERER"] || root_path
  end
end
