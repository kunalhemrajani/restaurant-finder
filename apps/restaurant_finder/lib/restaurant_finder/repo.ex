defmodule RestaurantFinder.Repo do
  use Ecto.Repo,
    otp_app: :restaurant_finder,
    adapter: Ecto.Adapters.Postgres
end
