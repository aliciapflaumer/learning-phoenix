defmodule LearningphoenixWeb.LearningphoenixController do
  use LearningphoenixWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
