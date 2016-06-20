defmodule Peepchat.ErrorViewTest do
  use Peepchat.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  test "renders 401.json" do
    assert render(Peepchat.ErrorView, "401.json", []) ==
      %{errors: [%{title: "Unauthorized", code: 401}]}
  end

  test "renders 403.json" do
    assert render(Peepchat.ErrorView, "403.json", []) ==
      %{errors: [%{title: "Forbidden", code: 403}]}
  end

  test "renders 500.json" do
    assert render(Peepchat.ErrorView, "500.json", []) ==
      %{errors: [%{title: "Internal Server Error", code: 500}]}
  end
end
