defmodule RestaurantFinderWeb.Router do
  use RestaurantFinderWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", RestaurantFinderWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api", RestaurantFinderWeb do
    pipe_through :api

    # Restaurants Endpoint
    resources "/restaurants", RestaurantController, only: [:index, :show]
  end
end
