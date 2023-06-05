// TO display your github calendar change the username

const github_user="rafay99-epic";

GitHubCalendar(".calendar", github_user);

// or enable responsive functionality:
GitHubCalendar(".calendar", github_user , { responsive: true });

// Use a proxy
GitHubCalendar(".calendar", github_user, {
   proxy (username) {
     return fetch(`https://your-proxy.com/github?user=${username}`)
   }
}).then(r => r.text())