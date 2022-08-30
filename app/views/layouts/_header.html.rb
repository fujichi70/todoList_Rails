<header class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
  <%= link_to 'TODO App', root_path, class: "navbar-brand" %>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
// もしユーザーがログインしているならば下記を表示
      <%  if user_signed_in?  %>
        <li class="nav-item">
          <%= link_to "Log out", destroy_user_session_path, method: :delete, class: "nav-link" %>
        </li>
//ログインしていないのなら下記を表示
      <% else %>
        <li class="nav-item">
          <%= link_to "Sign up", new_user_registration_path, class: "nav-link" %>
        </li>
        <li class="nav-item">
          <%= link_to "Log in", new_user_session_path, class: "nav-link" %>
        </li>
      <% end %>
    </ul>
  </div>
</header>