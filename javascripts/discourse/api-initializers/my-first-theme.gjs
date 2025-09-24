import { apiInitializer } from "discourse/lib/api";

export default apiInitializer("1.8.0", (api) => {
  const currentUser = api.getCurrentUser();

  api.renderInOutlet(
    "discovery-list-container-top",
    <template>
      <div class="custom-welcome-banner">
        {{#if currentUser}}
          Welcome back @{{currentUser.username}}
        {{else}}
          Welcome to our community
        {{/if}}
      </div>
    </template>
  );
});
