defmodule RestaurantFinderWeb.RestaurantController do
    use RestaurantFinderWeb, :controller
    
    def index(conn, _params) do
        conn
        |> send_resp(200, "")
    end

    def show(conn, %{"id" => id}) do
    
    end
end