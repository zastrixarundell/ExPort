defmodule ExPort.GithubApiStub do
  @behaviour ExPort.Services.GithubApiBehaviour

  def user_repos("zastrixarundell", "Java") do
    {:ok,
     [
       %{
         "labels_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/labels{/name}",
         "keys_url" => "https://api.github.com/repos/zastrixarundell/Toram-sensei/keys{/key_id}",
         "fork" => false,
         "owner" => %{
           "avatar_url" => "https://avatars.githubusercontent.com/u/30195425?v=4",
           "events_url" => "https://api.github.com/users/zastrixarundell/events{/privacy}",
           "followers_url" => "https://api.github.com/users/zastrixarundell/followers",
           "following_url" =>
             "https://api.github.com/users/zastrixarundell/following{/other_user}",
           "gists_url" => "https://api.github.com/users/zastrixarundell/gists{/gist_id}",
           "gravatar_id" => "",
           "html_url" => "https://github.com/zastrixarundell",
           "id" => 30_195_425,
           "login" => "zastrixarundell",
           "node_id" => "MDQ6VXNlcjMwMTk1NDI1",
           "organizations_url" => "https://api.github.com/users/zastrixarundell/orgs",
           "received_events_url" =>
             "https://api.github.com/users/zastrixarundell/received_events",
           "repos_url" => "https://api.github.com/users/zastrixarundell/repos",
           "site_admin" => false,
           "starred_url" => "https://api.github.com/users/zastrixarundell/starred{/owner}{/repo}",
           "subscriptions_url" => "https://api.github.com/users/zastrixarundell/subscriptions",
           "type" => "User",
           "url" => "https://api.github.com/users/zastrixarundell"
         },
         "hooks_url" => "https://api.github.com/repos/zastrixarundell/Toram-sensei/hooks",
         "id" => 196_872_524,
         "teams_url" => "https://api.github.com/repos/zastrixarundell/Toram-sensei/teams",
         "full_name" => "zastrixarundell/Toram-sensei",
         "git_commits_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/git/commits{/sha}",
         "default_branch" => "master",
         "downloads_url" => "https://api.github.com/repos/zastrixarundell/Toram-sensei/downloads",
         "stargazers_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/stargazers",
         "blobs_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/git/blobs{/sha}",
         "collaborators_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/collaborators{/collaborator}",
         "node_id" => "MDEwOlJlcG9zaXRvcnkxOTY4NzI1MjQ=",
         "watchers_count" => 3,
         "notifications_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/notifications{?since,all,participating}",
         "compare_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/compare/{base}...{head}",
         "trees_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/git/trees{/sha}",
         "clone_url" => "https://github.com/zastrixarundell/Toram-sensei.git",
         "has_downloads" => true,
         "subscription_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/subscription",
         "url" => "https://api.github.com/repos/zastrixarundell/Toram-sensei",
         "statuses_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/statuses/{sha}",
         "milestones_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/milestones{/number}",
         "svn_url" => "https://github.com/zastrixarundell/Toram-sensei",
         "events_url" => "https://api.github.com/repos/zastrixarundell/Toram-sensei/events",
         "updated_at" => "2021-09-04T23:18:35Z",
         "created_at" => "2019-07-14T18:57:18Z",
         "html_url" => "https://github.com/zastrixarundell/Toram-sensei",
         "archived" => true,
         "allow_forking" => true,
         "pulls_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/pulls{/number}",
         "mirror_url" => nil,
         "has_projects" => true,
         "has_wiki" => true,
         "topics" => ["discord-bot", "forums", "java", "javacord", "toram", "webscraping"],
         "language" => "Java",
         "contributors_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/contributors",
         "issue_events_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/issues/events{/number}",
         "forks" => 5,
         "merges_url" => "https://api.github.com/repos/zastrixarundell/Toram-sensei/merges",
         "deployments_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/deployments",
         "visibility" => "public",
         "assignees_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/assignees{/user}",
         "git_url" => "git://github.com/zastrixarundell/Toram-sensei.git",
         "forks_url" => "https://api.github.com/repos/zastrixarundell/Toram-sensei/forks",
         "tags_url" => "https://api.github.com/repos/zastrixarundell/Toram-sensei/tags",
         "open_issues" => 1,
         "size" => 27815,
         "pushed_at" => "2021-08-23T21:04:39Z",
         "issues_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/issues{/number}",
         "homepage" => "",
         "private" => false,
         "disabled" => false,
         "forks_count" => 5,
         "git_tags_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/git/tags{/sha}",
         "archive_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/{archive_format}{/ref}",
         "comments_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/comments{/number}",
         "has_pages" => false,
         "issue_comment_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/issues/comments{/number}",
         "branches_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/branches{/branch}",
         "score" => 1.0,
         "description" => "A Discord bot for the Toram mobile game",
         "subscribers_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/subscribers",
         "stargazers_count" => 3,
         "license" => %{
           "key" => "wtfpl",
           "name" => "Do What The F*ck You Want To Public License",
           "node_id" => "MDc6TGljZW5zZTE4",
           "spdx_id" => "WTFPL",
           "url" => "https://api.github.com/licenses/wtfpl"
         },
         "commits_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/commits{/sha}",
         "has_issues" => true,
         "git_refs_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/git/refs{/sha}",
         "ssh_url" => "git@github.com:zastrixarundell/Toram-sensei.git",
         "releases_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/releases{/id}",
         "is_template" => false,
         "name" => "Toram-sensei",
         "languages_url" => "https://api.github.com/repos/zastrixarundell/Toram-sensei/languages",
         "open_issues_count" => 1,
         "contents_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/contents/{+path}",
         "watchers" => 3
       },
       %{
         "labels_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/labels{/name}",
         "keys_url" => "https://api.github.com/repos/zastrixarundell/dbio-bot-java/keys{/key_id}",
         "fork" => false,
         "owner" => %{
           "avatar_url" => "https://avatars.githubusercontent.com/u/30195425?v=4",
           "events_url" => "https://api.github.com/users/zastrixarundell/events{/privacy}",
           "followers_url" => "https://api.github.com/users/zastrixarundell/followers",
           "following_url" =>
             "https://api.github.com/users/zastrixarundell/following{/other_user}",
           "gists_url" => "https://api.github.com/users/zastrixarundell/gists{/gist_id}",
           "gravatar_id" => "",
           "html_url" => "https://github.com/zastrixarundell",
           "id" => 30_195_425,
           "login" => "zastrixarundell",
           "node_id" => "MDQ6VXNlcjMwMTk1NDI1",
           "organizations_url" => "https://api.github.com/users/zastrixarundell/orgs",
           "received_events_url" =>
             "https://api.github.com/users/zastrixarundell/received_events",
           "repos_url" => "https://api.github.com/users/zastrixarundell/repos",
           "site_admin" => false,
           "starred_url" => "https://api.github.com/users/zastrixarundell/starred{/owner}{/repo}",
           "subscriptions_url" => "https://api.github.com/users/zastrixarundell/subscriptions",
           "type" => "User",
           "url" => "https://api.github.com/users/zastrixarundell"
         },
         "hooks_url" => "https://api.github.com/repos/zastrixarundell/dbio-bot-java/hooks",
         "id" => 260_664_560,
         "teams_url" => "https://api.github.com/repos/zastrixarundell/dbio-bot-java/teams",
         "full_name" => "zastrixarundell/dbio-bot-java",
         "git_commits_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/git/commits{/sha}",
         "default_branch" => "master",
         "downloads_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/downloads",
         "stargazers_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/stargazers",
         "blobs_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/git/blobs{/sha}",
         "collaborators_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/collaborators{/collaborator}",
         "node_id" => "MDEwOlJlcG9zaXRvcnkyNjA2NjQ1NjA=",
         "watchers_count" => 2,
         "notifications_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/notifications{?since,all,participating}",
         "compare_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/compare/{base}...{head}",
         "trees_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/git/trees{/sha}",
         "clone_url" => "https://github.com/zastrixarundell/dbio-bot-java.git",
         "has_downloads" => true,
         "subscription_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/subscription",
         "url" => "https://api.github.com/repos/zastrixarundell/dbio-bot-java",
         "statuses_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/statuses/{sha}",
         "milestones_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/milestones{/number}",
         "svn_url" => "https://github.com/zastrixarundell/dbio-bot-java",
         "events_url" => "https://api.github.com/repos/zastrixarundell/dbio-bot-java/events",
         "updated_at" => "2020-06-29T15:06:35Z",
         "created_at" => "2020-05-02T10:36:38Z",
         "html_url" => "https://github.com/zastrixarundell/dbio-bot-java",
         "archived" => false,
         "allow_forking" => true,
         "pulls_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/pulls{/number}",
         "mirror_url" => nil,
         "has_projects" => true,
         "has_wiki" => true,
         "topics" => [],
         "language" => "Java",
         "contributors_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/contributors",
         "issue_events_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/issues/events{/number}",
         "forks" => 0,
         "merges_url" => "https://api.github.com/repos/zastrixarundell/dbio-bot-java/merges",
         "deployments_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/deployments",
         "visibility" => "public",
         "assignees_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/assignees{/user}",
         "git_url" => "git://github.com/zastrixarundell/dbio-bot-java.git",
         "forks_url" => "https://api.github.com/repos/zastrixarundell/dbio-bot-java/forks",
         "tags_url" => "https://api.github.com/repos/zastrixarundell/dbio-bot-java/tags",
         "open_issues" => 0,
         "size" => 11,
         "pushed_at" => "2020-05-06T14:16:35Z",
         "issues_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/issues{/number}",
         "homepage" => nil,
         "private" => false,
         "disabled" => false,
         "forks_count" => 0,
         "git_tags_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/git/tags{/sha}",
         "archive_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/{archive_format}{/ref}",
         "comments_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/comments{/number}",
         "has_pages" => false,
         "issue_comment_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/issues/comments{/number}",
         "branches_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/branches{/branch}",
         "score" => 1.0,
         "description" => "A Discord bot example for the DBIO library",
         "subscribers_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/subscribers",
         "stargazers_count" => 2,
         "license" => nil,
         "commits_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/commits{/sha}",
         "has_issues" => true,
         "git_refs_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/git/refs{/sha}",
         "ssh_url" => "git@github.com:zastrixarundell/dbio-bot-java.git",
         "releases_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/releases{/id}",
         "is_template" => false,
         "name" => "dbio-bot-java",
         "languages_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/languages",
         "open_issues_count" => 0,
         "contents_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/contents/{+path}",
         "watchers" => 2
       },
       %{
         "labels_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/labels{/name}",
         "keys_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/keys{/key_id}",
         "fork" => false,
         "owner" => %{
           "avatar_url" => "https://avatars.githubusercontent.com/u/30195425?v=4",
           "events_url" => "https://api.github.com/users/zastrixarundell/events{/privacy}",
           "followers_url" => "https://api.github.com/users/zastrixarundell/followers",
           "following_url" =>
             "https://api.github.com/users/zastrixarundell/following{/other_user}",
           "gists_url" => "https://api.github.com/users/zastrixarundell/gists{/gist_id}",
           "gravatar_id" => "",
           "html_url" => "https://github.com/zastrixarundell",
           "id" => 30_195_425,
           "login" => "zastrixarundell",
           "node_id" => "MDQ6VXNlcjMwMTk1NDI1",
           "organizations_url" => "https://api.github.com/users/zastrixarundell/orgs",
           "received_events_url" =>
             "https://api.github.com/users/zastrixarundell/received_events",
           "repos_url" => "https://api.github.com/users/zastrixarundell/repos",
           "site_admin" => false,
           "starred_url" => "https://api.github.com/users/zastrixarundell/starred{/owner}{/repo}",
           "subscriptions_url" => "https://api.github.com/users/zastrixarundell/subscriptions",
           "type" => "User",
           "url" => "https://api.github.com/users/zastrixarundell"
         },
         "hooks_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/hooks",
         "id" => 260_541_509,
         "teams_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/teams",
         "full_name" => "zastrixarundell/dbio-java",
         "git_commits_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/git/commits{/sha}",
         "default_branch" => "master",
         "downloads_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/downloads",
         "stargazers_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/stargazers",
         "blobs_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/git/blobs{/sha}",
         "collaborators_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/collaborators{/collaborator}",
         "node_id" => "MDEwOlJlcG9zaXRvcnkyNjA1NDE1MDk=",
         "watchers_count" => 2,
         "notifications_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/notifications{?since,all,participating}",
         "compare_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/compare/{base}...{head}",
         "trees_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/git/trees{/sha}",
         "clone_url" => "https://github.com/zastrixarundell/dbio-java.git",
         "has_downloads" => true,
         "subscription_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/subscription",
         "url" => "https://api.github.com/repos/zastrixarundell/dbio-java",
         "statuses_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/statuses/{sha}",
         "milestones_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/milestones{/number}",
         "svn_url" => "https://github.com/zastrixarundell/dbio-java",
         "events_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/events",
         "updated_at" => "2020-05-21T10:15:12Z",
         "created_at" => "2020-05-01T19:27:25Z",
         "html_url" => "https://github.com/zastrixarundell/dbio-java",
         "archived" => false,
         "allow_forking" => true,
         "pulls_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/pulls{/number}",
         "mirror_url" => nil,
         "has_projects" => true,
         "has_wiki" => true,
         "topics" => ["dbio", "discord", "httpclient", "java", "tests"],
         "language" => "Java",
         "contributors_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/contributors",
         "issue_events_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/issues/events{/number}",
         "forks" => 1,
         "merges_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/merges",
         "deployments_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/deployments",
         "visibility" => "public",
         "assignees_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/assignees{/user}",
         "git_url" => "git://github.com/zastrixarundell/dbio-java.git",
         "forks_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/forks",
         "tags_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/tags",
         "open_issues" => 2,
         "size" => 657,
         "pushed_at" => "2021-06-04T02:37:18Z",
         "issues_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/issues{/number}",
         "homepage" => "",
         "private" => false,
         "disabled" => false,
         "forks_count" => 1,
         "git_tags_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/git/tags{/sha}",
         "archive_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/{archive_format}{/ref}",
         "comments_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/comments{/number}",
         "has_pages" => true,
         "issue_comment_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/issues/comments{/number}",
         "branches_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/branches{/branch}",
         "score" => 1.0,
         "description" => "A java library for the discord.bio library endpoint.",
         "subscribers_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/subscribers",
         "stargazers_count" => 2,
         "license" => nil,
         "commits_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/commits{/sha}",
         "has_issues" => true,
         "git_refs_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/git/refs{/sha}",
         "ssh_url" => "git@github.com:zastrixarundell/dbio-java.git",
         "releases_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/releases{/id}",
         "is_template" => false,
         "name" => "dbio-java",
         "languages_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/languages",
         "open_issues_count" => 2,
         "contents_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/contents/{+path}",
         "watchers" => 2
       }
     ]}
  end

  def user_repos("zastrixarundell", "Elixir") do
    {:ok,
     [
       %{
         "labels_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/labels{/name}",
         "keys_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/keys{/key_id}",
         "fork" => false,
         "owner" => %{
           "avatar_url" => "https://avatars.githubusercontent.com/u/30195425?v=4",
           "events_url" => "https://api.github.com/users/zastrixarundell/events{/privacy}",
           "followers_url" => "https://api.github.com/users/zastrixarundell/followers",
           "following_url" =>
             "https://api.github.com/users/zastrixarundell/following{/other_user}",
           "gists_url" => "https://api.github.com/users/zastrixarundell/gists{/gist_id}",
           "gravatar_id" => "",
           "html_url" => "https://github.com/zastrixarundell",
           "id" => 30_195_425,
           "login" => "zastrixarundell",
           "node_id" => "MDQ6VXNlcjMwMTk1NDI1",
           "organizations_url" => "https://api.github.com/users/zastrixarundell/orgs",
           "received_events_url" =>
             "https://api.github.com/users/zastrixarundell/received_events",
           "repos_url" => "https://api.github.com/users/zastrixarundell/repos",
           "site_admin" => false,
           "starred_url" => "https://api.github.com/users/zastrixarundell/starred{/owner}{/repo}",
           "subscriptions_url" => "https://api.github.com/users/zastrixarundell/subscriptions",
           "type" => "User",
           "url" => "https://api.github.com/users/zastrixarundell"
         },
         "hooks_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/hooks",
         "id" => 250_649_116,
         "teams_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/teams",
         "full_name" => "zastrixarundell/Catlixir",
         "git_commits_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/git/commits{/sha}",
         "default_branch" => "master",
         "downloads_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/downloads",
         "stargazers_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/stargazers",
         "blobs_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/git/blobs{/sha}",
         "collaborators_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/collaborators{/collaborator}",
         "node_id" => "MDEwOlJlcG9zaXRvcnkyNTA2NDkxMTY=",
         "watchers_count" => 2,
         "notifications_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/notifications{?since,all,participating}",
         "compare_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/compare/{base}...{head}",
         "trees_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/git/trees{/sha}",
         "clone_url" => "https://github.com/zastrixarundell/Catlixir.git",
         "has_downloads" => true,
         "subscription_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/subscription",
         "url" => "https://api.github.com/repos/zastrixarundell/Catlixir",
         "statuses_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/statuses/{sha}",
         "milestones_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/milestones{/number}",
         "svn_url" => "https://github.com/zastrixarundell/Catlixir",
         "events_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/events",
         "updated_at" => "2021-09-08T18:59:36Z",
         "created_at" => "2020-03-27T21:14:43Z",
         "html_url" => "https://github.com/zastrixarundell/Catlixir",
         "archived" => false,
         "allow_forking" => true,
         "pulls_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/pulls{/number}",
         "mirror_url" => nil,
         "has_projects" => true,
         "has_wiki" => true,
         "topics" => [
           "bot",
           "cats",
           "discord-bot",
           "elixir",
           "memes",
           "nostrum",
           "reddit-api",
           "trivia"
         ],
         "language" => "Elixir",
         "contributors_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/contributors",
         "issue_events_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/issues/events{/number}",
         "forks" => 0,
         "merges_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/merges",
         "deployments_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/deployments",
         "visibility" => "public",
         "assignees_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/assignees{/user}",
         "git_url" => "git://github.com/zastrixarundell/Catlixir.git",
         "forks_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/forks",
         "tags_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/tags",
         "open_issues" => 1,
         "size" => 3143,
         "pushed_at" => "2021-09-08T18:59:32Z",
         "issues_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/issues{/number}",
         "homepage" => nil,
         "private" => false,
         "disabled" => false,
         "forks_count" => 0,
         "git_tags_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/git/tags{/sha}",
         "archive_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/{archive_format}{/ref}",
         "comments_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/comments{/number}",
         "has_pages" => false,
         "issue_comment_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/issues/comments{/number}",
         "branches_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/branches{/branch}",
         "score" => 1.0,
         "description" => "A Discord bot written in Elixir regarding... Cats!",
         "subscribers_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/subscribers",
         "stargazers_count" => 2,
         "license" => %{
           "key" => "wtfpl",
           "name" => "Do What The F*ck You Want To Public License",
           "node_id" => "MDc6TGljZW5zZTE4",
           "spdx_id" => "WTFPL",
           "url" => "https://api.github.com/licenses/wtfpl"
         },
         "commits_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/commits{/sha}",
         "has_issues" => true,
         "git_refs_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/git/refs{/sha}",
         "ssh_url" => "git@github.com:zastrixarundell/Catlixir.git",
         "releases_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/releases{/id}",
         "is_template" => false,
         "name" => "Catlixir",
         "languages_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/languages",
         "open_issues_count" => 1,
         "contents_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/contents/{+path}",
         "watchers" => 2
       },
       %{
         "labels_url" => "https://api.github.com/repos/zastrixarundell/CovidParser/labels{/name}",
         "keys_url" => "https://api.github.com/repos/zastrixarundell/CovidParser/keys{/key_id}",
         "fork" => false,
         "owner" => %{
           "avatar_url" => "https://avatars.githubusercontent.com/u/30195425?v=4",
           "events_url" => "https://api.github.com/users/zastrixarundell/events{/privacy}",
           "followers_url" => "https://api.github.com/users/zastrixarundell/followers",
           "following_url" =>
             "https://api.github.com/users/zastrixarundell/following{/other_user}",
           "gists_url" => "https://api.github.com/users/zastrixarundell/gists{/gist_id}",
           "gravatar_id" => "",
           "html_url" => "https://github.com/zastrixarundell",
           "id" => 30_195_425,
           "login" => "zastrixarundell",
           "node_id" => "MDQ6VXNlcjMwMTk1NDI1",
           "organizations_url" => "https://api.github.com/users/zastrixarundell/orgs",
           "received_events_url" =>
             "https://api.github.com/users/zastrixarundell/received_events",
           "repos_url" => "https://api.github.com/users/zastrixarundell/repos",
           "site_admin" => false,
           "starred_url" => "https://api.github.com/users/zastrixarundell/starred{/owner}{/repo}",
           "subscriptions_url" => "https://api.github.com/users/zastrixarundell/subscriptions",
           "type" => "User",
           "url" => "https://api.github.com/users/zastrixarundell"
         },
         "hooks_url" => "https://api.github.com/repos/zastrixarundell/CovidParser/hooks",
         "id" => 249_769_159,
         "teams_url" => "https://api.github.com/repos/zastrixarundell/CovidParser/teams",
         "full_name" => "zastrixarundell/CovidParser",
         "git_commits_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/git/commits{/sha}",
         "default_branch" => "master",
         "downloads_url" => "https://api.github.com/repos/zastrixarundell/CovidParser/downloads",
         "stargazers_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/stargazers",
         "blobs_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/git/blobs{/sha}",
         "collaborators_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/collaborators{/collaborator}",
         "node_id" => "MDEwOlJlcG9zaXRvcnkyNDk3NjkxNTk=",
         "watchers_count" => 0,
         "notifications_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/notifications{?since,all,participating}",
         "compare_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/compare/{base}...{head}",
         "trees_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/git/trees{/sha}",
         "clone_url" => "https://github.com/zastrixarundell/CovidParser.git",
         "has_downloads" => true,
         "subscription_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/subscription",
         "url" => "https://api.github.com/repos/zastrixarundell/CovidParser",
         "statuses_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/statuses/{sha}",
         "milestones_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/milestones{/number}",
         "svn_url" => "https://github.com/zastrixarundell/CovidParser",
         "events_url" => "https://api.github.com/repos/zastrixarundell/CovidParser/events",
         "updated_at" => "2020-04-24T21:15:54Z",
         "created_at" => "2020-03-24T17:09:47Z",
         "html_url" => "https://github.com/zastrixarundell/CovidParser",
         "archived" => false,
         "allow_forking" => true,
         "pulls_url" => "https://api.github.com/repos/zastrixarundell/CovidParser/pulls{/number}",
         "mirror_url" => nil,
         "has_projects" => true,
         "has_wiki" => true,
         "topics" => [
           "covd-19",
           "fast",
           "filters",
           "json",
           "phoenix",
           "query",
           "relay-server",
           "restful-api"
         ],
         "language" => "Elixir",
         "contributors_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/contributors",
         "issue_events_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/issues/events{/number}",
         "forks" => 0,
         "merges_url" => "https://api.github.com/repos/zastrixarundell/CovidParser/merges",
         "deployments_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/deployments",
         "visibility" => "public",
         "assignees_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/assignees{/user}",
         "git_url" => "git://github.com/zastrixarundell/CovidParser.git",
         "forks_url" => "https://api.github.com/repos/zastrixarundell/CovidParser/forks",
         "tags_url" => "https://api.github.com/repos/zastrixarundell/CovidParser/tags",
         "open_issues" => 8,
         "size" => 1244,
         "pushed_at" => "2021-08-12T04:25:15Z",
         "issues_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/issues{/number}",
         "homepage" => nil,
         "private" => false,
         "disabled" => false,
         "forks_count" => 0,
         "git_tags_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/git/tags{/sha}",
         "archive_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/{archive_format}{/ref}",
         "comments_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/comments{/number}",
         "has_pages" => false,
         "issue_comment_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/issues/comments{/number}",
         "branches_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/branches{/branch}",
         "score" => 1.0,
         "description" =>
           "A relay server for queries and blazing fast response about the situation of Covid19.",
         "subscribers_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/subscribers",
         "stargazers_count" => 0,
         "license" => nil,
         "commits_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/commits{/sha}",
         "has_issues" => true,
         "git_refs_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/git/refs{/sha}",
         "ssh_url" => "git@github.com:zastrixarundell/CovidParser.git",
         "releases_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/releases{/id}",
         "is_template" => false,
         "name" => "CovidParser",
         "languages_url" => "https://api.github.com/repos/zastrixarundell/CovidParser/languages",
         "open_issues_count" => 8,
         "contents_url" =>
           "https://api.github.com/repos/zastrixarundell/CovidParser/contents/{+path}",
         "watchers" => 0
       },
       %{
         "labels_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/labels{/name}",
         "keys_url" => "https://api.github.com/repos/zastrixarundell/pheed_the_pi/keys{/key_id}",
         "fork" => false,
         "owner" => %{
           "avatar_url" => "https://avatars.githubusercontent.com/u/30195425?v=4",
           "events_url" => "https://api.github.com/users/zastrixarundell/events{/privacy}",
           "followers_url" => "https://api.github.com/users/zastrixarundell/followers",
           "following_url" =>
             "https://api.github.com/users/zastrixarundell/following{/other_user}",
           "gists_url" => "https://api.github.com/users/zastrixarundell/gists{/gist_id}",
           "gravatar_id" => "",
           "html_url" => "https://github.com/zastrixarundell",
           "id" => 30_195_425,
           "login" => "zastrixarundell",
           "node_id" => "MDQ6VXNlcjMwMTk1NDI1",
           "organizations_url" => "https://api.github.com/users/zastrixarundell/orgs",
           "received_events_url" =>
             "https://api.github.com/users/zastrixarundell/received_events",
           "repos_url" => "https://api.github.com/users/zastrixarundell/repos",
           "site_admin" => false,
           "starred_url" => "https://api.github.com/users/zastrixarundell/starred{/owner}{/repo}",
           "subscriptions_url" => "https://api.github.com/users/zastrixarundell/subscriptions",
           "type" => "User",
           "url" => "https://api.github.com/users/zastrixarundell"
         },
         "hooks_url" => "https://api.github.com/repos/zastrixarundell/pheed_the_pi/hooks",
         "id" => 280_263_554,
         "teams_url" => "https://api.github.com/repos/zastrixarundell/pheed_the_pi/teams",
         "full_name" => "zastrixarundell/pheed_the_pi",
         "git_commits_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/git/commits{/sha}",
         "default_branch" => "master",
         "downloads_url" => "https://api.github.com/repos/zastrixarundell/pheed_the_pi/downloads",
         "stargazers_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/stargazers",
         "blobs_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/git/blobs{/sha}",
         "collaborators_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/collaborators{/collaborator}",
         "node_id" => "MDEwOlJlcG9zaXRvcnkyODAyNjM1NTQ=",
         "watchers_count" => 0,
         "notifications_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/notifications{?since,all,participating}",
         "compare_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/compare/{base}...{head}",
         "trees_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/git/trees{/sha}",
         "clone_url" => "https://github.com/zastrixarundell/pheed_the_pi.git",
         "has_downloads" => true,
         "subscription_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/subscription",
         "url" => "https://api.github.com/repos/zastrixarundell/pheed_the_pi",
         "statuses_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/statuses/{sha}",
         "milestones_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/milestones{/number}",
         "svn_url" => "https://github.com/zastrixarundell/pheed_the_pi",
         "events_url" => "https://api.github.com/repos/zastrixarundell/pheed_the_pi/events",
         "updated_at" => "2020-07-27T18:14:37Z",
         "created_at" => "2020-07-16T21:35:53Z",
         "html_url" => "https://github.com/zastrixarundell/pheed_the_pi",
         "archived" => false,
         "allow_forking" => true,
         "pulls_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/pulls{/number}",
         "mirror_url" => nil,
         "has_projects" => true,
         "has_wiki" => true,
         "topics" => ["elixir", "elixir-phoenix", "erlport", "raspberry-pi"],
         "language" => "Elixir",
         "contributors_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/contributors",
         "issue_events_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/issues/events{/number}",
         "forks" => 1,
         "merges_url" => "https://api.github.com/repos/zastrixarundell/pheed_the_pi/merges",
         "deployments_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/deployments",
         "visibility" => "public",
         "assignees_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/assignees{/user}",
         "git_url" => "git://github.com/zastrixarundell/pheed_the_pi.git",
         "forks_url" => "https://api.github.com/repos/zastrixarundell/pheed_the_pi/forks",
         "tags_url" => "https://api.github.com/repos/zastrixarundell/pheed_the_pi/tags",
         "open_issues" => 7,
         "size" => 3615,
         "pushed_at" => "2021-08-12T18:11:43Z",
         "issues_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/issues{/number}",
         "homepage" => "",
         "private" => false,
         "disabled" => false,
         "forks_count" => 1,
         "git_tags_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/git/tags{/sha}",
         "archive_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/{archive_format}{/ref}",
         "comments_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/comments{/number}",
         "has_pages" => false,
         "issue_comment_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/issues/comments{/number}",
         "branches_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/branches{/branch}",
         "score" => 1.0,
         "description" =>
           "A Phoenix webserver with Picam stream and Python controls on a RaspberryPi",
         "subscribers_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/subscribers",
         "stargazers_count" => 0,
         "license" => nil,
         "commits_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/commits{/sha}",
         "has_issues" => true,
         "git_refs_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/git/refs{/sha}",
         "ssh_url" => "git@github.com:zastrixarundell/pheed_the_pi.git",
         "releases_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/releases{/id}",
         "is_template" => false,
         "name" => "pheed_the_pi",
         "languages_url" => "https://api.github.com/repos/zastrixarundell/pheed_the_pi/languages",
         "open_issues_count" => 7,
         "contents_url" =>
           "https://api.github.com/repos/zastrixarundell/pheed_the_pi/contents/{+path}",
         "watchers" => 0
       }
     ]}
  end

  def user_repos("zastrixarundell", nil) do
    {:ok,
     [
       %{
         "labels_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/labels{/name}",
         "keys_url" => "https://api.github.com/repos/zastrixarundell/Toram-sensei/keys{/key_id}",
         "fork" => false,
         "owner" => %{
           "avatar_url" => "https://avatars.githubusercontent.com/u/30195425?v=4",
           "events_url" => "https://api.github.com/users/zastrixarundell/events{/privacy}",
           "followers_url" => "https://api.github.com/users/zastrixarundell/followers",
           "following_url" =>
             "https://api.github.com/users/zastrixarundell/following{/other_user}",
           "gists_url" => "https://api.github.com/users/zastrixarundell/gists{/gist_id}",
           "gravatar_id" => "",
           "html_url" => "https://github.com/zastrixarundell",
           "id" => 30_195_425,
           "login" => "zastrixarundell",
           "node_id" => "MDQ6VXNlcjMwMTk1NDI1",
           "organizations_url" => "https://api.github.com/users/zastrixarundell/orgs",
           "received_events_url" =>
             "https://api.github.com/users/zastrixarundell/received_events",
           "repos_url" => "https://api.github.com/users/zastrixarundell/repos",
           "site_admin" => false,
           "starred_url" => "https://api.github.com/users/zastrixarundell/starred{/owner}{/repo}",
           "subscriptions_url" => "https://api.github.com/users/zastrixarundell/subscriptions",
           "type" => "User",
           "url" => "https://api.github.com/users/zastrixarundell"
         },
         "hooks_url" => "https://api.github.com/repos/zastrixarundell/Toram-sensei/hooks",
         "id" => 196_872_524,
         "teams_url" => "https://api.github.com/repos/zastrixarundell/Toram-sensei/teams",
         "full_name" => "zastrixarundell/Toram-sensei",
         "git_commits_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/git/commits{/sha}",
         "default_branch" => "master",
         "downloads_url" => "https://api.github.com/repos/zastrixarundell/Toram-sensei/downloads",
         "stargazers_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/stargazers",
         "blobs_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/git/blobs{/sha}",
         "collaborators_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/collaborators{/collaborator}",
         "node_id" => "MDEwOlJlcG9zaXRvcnkxOTY4NzI1MjQ=",
         "watchers_count" => 3,
         "notifications_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/notifications{?since,all,participating}",
         "compare_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/compare/{base}...{head}",
         "trees_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/git/trees{/sha}",
         "clone_url" => "https://github.com/zastrixarundell/Toram-sensei.git",
         "has_downloads" => true,
         "subscription_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/subscription",
         "url" => "https://api.github.com/repos/zastrixarundell/Toram-sensei",
         "statuses_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/statuses/{sha}",
         "milestones_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/milestones{/number}",
         "svn_url" => "https://github.com/zastrixarundell/Toram-sensei",
         "events_url" => "https://api.github.com/repos/zastrixarundell/Toram-sensei/events",
         "updated_at" => "2021-09-04T23:18:35Z",
         "created_at" => "2019-07-14T18:57:18Z",
         "html_url" => "https://github.com/zastrixarundell/Toram-sensei",
         "archived" => true,
         "allow_forking" => true,
         "pulls_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/pulls{/number}",
         "mirror_url" => nil,
         "has_projects" => true,
         "has_wiki" => true,
         "topics" => ["discord-bot", "forums", "java", "javacord", "toram", "webscraping"],
         "language" => "Java",
         "contributors_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/contributors",
         "issue_events_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/issues/events{/number}",
         "forks" => 5,
         "merges_url" => "https://api.github.com/repos/zastrixarundell/Toram-sensei/merges",
         "deployments_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/deployments",
         "visibility" => "public",
         "assignees_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/assignees{/user}",
         "git_url" => "git://github.com/zastrixarundell/Toram-sensei.git",
         "forks_url" => "https://api.github.com/repos/zastrixarundell/Toram-sensei/forks",
         "tags_url" => "https://api.github.com/repos/zastrixarundell/Toram-sensei/tags",
         "open_issues" => 1,
         "size" => 27815,
         "pushed_at" => "2021-08-23T21:04:39Z",
         "issues_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/issues{/number}",
         "homepage" => "",
         "private" => false,
         "disabled" => false,
         "forks_count" => 5,
         "git_tags_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/git/tags{/sha}",
         "archive_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/{archive_format}{/ref}",
         "comments_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/comments{/number}",
         "has_pages" => false,
         "issue_comment_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/issues/comments{/number}",
         "branches_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/branches{/branch}",
         "score" => 1.0,
         "description" => "A Discord bot for the Toram mobile game",
         "subscribers_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/subscribers",
         "stargazers_count" => 3,
         "license" => %{
           "key" => "wtfpl",
           "name" => "Do What The F*ck You Want To Public License",
           "node_id" => "MDc6TGljZW5zZTE4",
           "spdx_id" => "WTFPL",
           "url" => "https://api.github.com/licenses/wtfpl"
         },
         "commits_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/commits{/sha}",
         "has_issues" => true,
         "git_refs_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/git/refs{/sha}",
         "ssh_url" => "git@github.com:zastrixarundell/Toram-sensei.git",
         "releases_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/releases{/id}",
         "is_template" => false,
         "name" => "Toram-sensei",
         "languages_url" => "https://api.github.com/repos/zastrixarundell/Toram-sensei/languages",
         "open_issues_count" => 1,
         "contents_url" =>
           "https://api.github.com/repos/zastrixarundell/Toram-sensei/contents/{+path}",
         "watchers" => 3
       },
       %{
         "labels_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/labels{/name}",
         "keys_url" => "https://api.github.com/repos/zastrixarundell/dbio-bot-java/keys{/key_id}",
         "fork" => false,
         "owner" => %{
           "avatar_url" => "https://avatars.githubusercontent.com/u/30195425?v=4",
           "events_url" => "https://api.github.com/users/zastrixarundell/events{/privacy}",
           "followers_url" => "https://api.github.com/users/zastrixarundell/followers",
           "following_url" =>
             "https://api.github.com/users/zastrixarundell/following{/other_user}",
           "gists_url" => "https://api.github.com/users/zastrixarundell/gists{/gist_id}",
           "gravatar_id" => "",
           "html_url" => "https://github.com/zastrixarundell",
           "id" => 30_195_425,
           "login" => "zastrixarundell",
           "node_id" => "MDQ6VXNlcjMwMTk1NDI1",
           "organizations_url" => "https://api.github.com/users/zastrixarundell/orgs",
           "received_events_url" =>
             "https://api.github.com/users/zastrixarundell/received_events",
           "repos_url" => "https://api.github.com/users/zastrixarundell/repos",
           "site_admin" => false,
           "starred_url" => "https://api.github.com/users/zastrixarundell/starred{/owner}{/repo}",
           "subscriptions_url" => "https://api.github.com/users/zastrixarundell/subscriptions",
           "type" => "User",
           "url" => "https://api.github.com/users/zastrixarundell"
         },
         "hooks_url" => "https://api.github.com/repos/zastrixarundell/dbio-bot-java/hooks",
         "id" => 260_664_560,
         "teams_url" => "https://api.github.com/repos/zastrixarundell/dbio-bot-java/teams",
         "full_name" => "zastrixarundell/dbio-bot-java",
         "git_commits_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/git/commits{/sha}",
         "default_branch" => "master",
         "downloads_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/downloads",
         "stargazers_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/stargazers",
         "blobs_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/git/blobs{/sha}",
         "collaborators_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/collaborators{/collaborator}",
         "node_id" => "MDEwOlJlcG9zaXRvcnkyNjA2NjQ1NjA=",
         "watchers_count" => 2,
         "notifications_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/notifications{?since,all,participating}",
         "compare_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/compare/{base}...{head}",
         "trees_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/git/trees{/sha}",
         "clone_url" => "https://github.com/zastrixarundell/dbio-bot-java.git",
         "has_downloads" => true,
         "subscription_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/subscription",
         "url" => "https://api.github.com/repos/zastrixarundell/dbio-bot-java",
         "statuses_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/statuses/{sha}",
         "milestones_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/milestones{/number}",
         "svn_url" => "https://github.com/zastrixarundell/dbio-bot-java",
         "events_url" => "https://api.github.com/repos/zastrixarundell/dbio-bot-java/events",
         "updated_at" => "2020-06-29T15:06:35Z",
         "created_at" => "2020-05-02T10:36:38Z",
         "html_url" => "https://github.com/zastrixarundell/dbio-bot-java",
         "archived" => false,
         "allow_forking" => true,
         "pulls_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/pulls{/number}",
         "mirror_url" => nil,
         "has_projects" => true,
         "has_wiki" => true,
         "topics" => [],
         "language" => "Java",
         "contributors_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/contributors",
         "issue_events_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/issues/events{/number}",
         "forks" => 0,
         "merges_url" => "https://api.github.com/repos/zastrixarundell/dbio-bot-java/merges",
         "deployments_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/deployments",
         "visibility" => "public",
         "assignees_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/assignees{/user}",
         "git_url" => "git://github.com/zastrixarundell/dbio-bot-java.git",
         "forks_url" => "https://api.github.com/repos/zastrixarundell/dbio-bot-java/forks",
         "tags_url" => "https://api.github.com/repos/zastrixarundell/dbio-bot-java/tags",
         "open_issues" => 0,
         "size" => 11,
         "pushed_at" => "2020-05-06T14:16:35Z",
         "issues_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/issues{/number}",
         "homepage" => nil,
         "private" => false,
         "disabled" => false,
         "forks_count" => 0,
         "git_tags_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/git/tags{/sha}",
         "archive_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/{archive_format}{/ref}",
         "comments_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/comments{/number}",
         "has_pages" => false,
         "issue_comment_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/issues/comments{/number}",
         "branches_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/branches{/branch}",
         "score" => 1.0,
         "description" => "A Discord bot example for the DBIO library",
         "subscribers_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/subscribers",
         "stargazers_count" => 2,
         "license" => nil,
         "commits_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/commits{/sha}",
         "has_issues" => true,
         "git_refs_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/git/refs{/sha}",
         "ssh_url" => "git@github.com:zastrixarundell/dbio-bot-java.git",
         "releases_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/releases{/id}",
         "is_template" => false,
         "name" => "dbio-bot-java",
         "languages_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/languages",
         "open_issues_count" => 0,
         "contents_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-bot-java/contents/{+path}",
         "watchers" => 2
       },
       %{
         "labels_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/labels{/name}",
         "keys_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/keys{/key_id}",
         "fork" => false,
         "owner" => %{
           "avatar_url" => "https://avatars.githubusercontent.com/u/30195425?v=4",
           "events_url" => "https://api.github.com/users/zastrixarundell/events{/privacy}",
           "followers_url" => "https://api.github.com/users/zastrixarundell/followers",
           "following_url" =>
             "https://api.github.com/users/zastrixarundell/following{/other_user}",
           "gists_url" => "https://api.github.com/users/zastrixarundell/gists{/gist_id}",
           "gravatar_id" => "",
           "html_url" => "https://github.com/zastrixarundell",
           "id" => 30_195_425,
           "login" => "zastrixarundell",
           "node_id" => "MDQ6VXNlcjMwMTk1NDI1",
           "organizations_url" => "https://api.github.com/users/zastrixarundell/orgs",
           "received_events_url" =>
             "https://api.github.com/users/zastrixarundell/received_events",
           "repos_url" => "https://api.github.com/users/zastrixarundell/repos",
           "site_admin" => false,
           "starred_url" => "https://api.github.com/users/zastrixarundell/starred{/owner}{/repo}",
           "subscriptions_url" => "https://api.github.com/users/zastrixarundell/subscriptions",
           "type" => "User",
           "url" => "https://api.github.com/users/zastrixarundell"
         },
         "hooks_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/hooks",
         "id" => 260_541_509,
         "teams_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/teams",
         "full_name" => "zastrixarundell/dbio-java",
         "git_commits_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/git/commits{/sha}",
         "default_branch" => "master",
         "downloads_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/downloads",
         "stargazers_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/stargazers",
         "blobs_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/git/blobs{/sha}",
         "collaborators_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/collaborators{/collaborator}",
         "node_id" => "MDEwOlJlcG9zaXRvcnkyNjA1NDE1MDk=",
         "watchers_count" => 2,
         "notifications_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/notifications{?since,all,participating}",
         "compare_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/compare/{base}...{head}",
         "trees_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/git/trees{/sha}",
         "clone_url" => "https://github.com/zastrixarundell/dbio-java.git",
         "has_downloads" => true,
         "subscription_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/subscription",
         "url" => "https://api.github.com/repos/zastrixarundell/dbio-java",
         "statuses_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/statuses/{sha}",
         "milestones_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/milestones{/number}",
         "svn_url" => "https://github.com/zastrixarundell/dbio-java",
         "events_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/events",
         "updated_at" => "2020-05-21T10:15:12Z",
         "created_at" => "2020-05-01T19:27:25Z",
         "html_url" => "https://github.com/zastrixarundell/dbio-java",
         "archived" => false,
         "allow_forking" => true,
         "pulls_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/pulls{/number}",
         "mirror_url" => nil,
         "has_projects" => true,
         "has_wiki" => true,
         "topics" => ["dbio", "discord", "httpclient", "java", "tests"],
         "language" => "Java",
         "contributors_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/contributors",
         "issue_events_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/issues/events{/number}",
         "forks" => 1,
         "merges_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/merges",
         "deployments_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/deployments",
         "visibility" => "public",
         "assignees_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/assignees{/user}",
         "git_url" => "git://github.com/zastrixarundell/dbio-java.git",
         "forks_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/forks",
         "tags_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/tags",
         "open_issues" => 2,
         "size" => 657,
         "pushed_at" => "2021-06-04T02:37:18Z",
         "issues_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/issues{/number}",
         "homepage" => "",
         "private" => false,
         "disabled" => false,
         "forks_count" => 1,
         "git_tags_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/git/tags{/sha}",
         "archive_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/{archive_format}{/ref}",
         "comments_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/comments{/number}",
         "has_pages" => true,
         "issue_comment_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/issues/comments{/number}",
         "branches_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/branches{/branch}",
         "score" => 1.0,
         "description" => "A java library for the discord.bio library endpoint.",
         "subscribers_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/subscribers",
         "stargazers_count" => 2,
         "license" => nil,
         "commits_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/commits{/sha}",
         "has_issues" => true,
         "git_refs_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/git/refs{/sha}",
         "ssh_url" => "git@github.com:zastrixarundell/dbio-java.git",
         "releases_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/releases{/id}",
         "is_template" => false,
         "name" => "dbio-java",
         "languages_url" => "https://api.github.com/repos/zastrixarundell/dbio-java/languages",
         "open_issues_count" => 2,
         "contents_url" =>
           "https://api.github.com/repos/zastrixarundell/dbio-java/contents/{+path}",
         "watchers" => 2
       },
       %{
         "labels_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/labels{/name}",
         "keys_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/keys{/key_id}",
         "fork" => false,
         "owner" => %{
           "avatar_url" => "https://avatars.githubusercontent.com/u/30195425?v=4",
           "events_url" => "https://api.github.com/users/zastrixarundell/events{/privacy}",
           "followers_url" => "https://api.github.com/users/zastrixarundell/followers",
           "following_url" =>
             "https://api.github.com/users/zastrixarundell/following{/other_user}",
           "gists_url" => "https://api.github.com/users/zastrixarundell/gists{/gist_id}",
           "gravatar_id" => "",
           "html_url" => "https://github.com/zastrixarundell",
           "id" => 30_195_425,
           "login" => "zastrixarundell",
           "node_id" => "MDQ6VXNlcjMwMTk1NDI1",
           "organizations_url" => "https://api.github.com/users/zastrixarundell/orgs",
           "received_events_url" =>
             "https://api.github.com/users/zastrixarundell/received_events",
           "repos_url" => "https://api.github.com/users/zastrixarundell/repos",
           "site_admin" => false,
           "starred_url" => "https://api.github.com/users/zastrixarundell/starred{/owner}{/repo}",
           "subscriptions_url" => "https://api.github.com/users/zastrixarundell/subscriptions",
           "type" => "User",
           "url" => "https://api.github.com/users/zastrixarundell"
         },
         "hooks_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/hooks",
         "id" => 250_649_116,
         "teams_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/teams",
         "full_name" => "zastrixarundell/Catlixir",
         "git_commits_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/git/commits{/sha}",
         "default_branch" => "master",
         "downloads_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/downloads",
         "stargazers_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/stargazers",
         "blobs_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/git/blobs{/sha}",
         "collaborators_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/collaborators{/collaborator}",
         "node_id" => "MDEwOlJlcG9zaXRvcnkyNTA2NDkxMTY=",
         "watchers_count" => 2,
         "notifications_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/notifications{?since,all,participating}",
         "compare_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/compare/{base}...{head}",
         "trees_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/git/trees{/sha}",
         "clone_url" => "https://github.com/zastrixarundell/Catlixir.git",
         "has_downloads" => true,
         "subscription_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/subscription",
         "url" => "https://api.github.com/repos/zastrixarundell/Catlixir",
         "statuses_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/statuses/{sha}",
         "milestones_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/milestones{/number}",
         "svn_url" => "https://github.com/zastrixarundell/Catlixir",
         "events_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/events",
         "updated_at" => "2021-09-08T18:59:36Z",
         "created_at" => "2020-03-27T21:14:43Z",
         "html_url" => "https://github.com/zastrixarundell/Catlixir",
         "archived" => false,
         "allow_forking" => true,
         "pulls_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/pulls{/number}",
         "mirror_url" => nil,
         "has_projects" => true,
         "has_wiki" => true,
         "topics" => [
           "bot",
           "cats",
           "discord-bot",
           "elixir",
           "memes",
           "nostrum",
           "reddit-api",
           "trivia"
         ],
         "language" => "Elixir",
         "contributors_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/contributors",
         "issue_events_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/issues/events{/number}",
         "forks" => 0,
         "merges_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/merges",
         "deployments_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/deployments",
         "visibility" => "public",
         "assignees_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/assignees{/user}",
         "git_url" => "git://github.com/zastrixarundell/Catlixir.git",
         "forks_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/forks",
         "tags_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/tags",
         "open_issues" => 1,
         "size" => 3143,
         "pushed_at" => "2021-09-08T18:59:32Z",
         "issues_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/issues{/number}",
         "homepage" => nil,
         "private" => false,
         "disabled" => false,
         "forks_count" => 0,
         "git_tags_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/git/tags{/sha}",
         "archive_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/{archive_format}{/ref}",
         "comments_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/comments{/number}",
         "has_pages" => false,
         "issue_comment_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/issues/comments{/number}",
         "branches_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/branches{/branch}",
         "score" => 1.0,
         "description" => "A Discord bot written in Elixir regarding... Cats!",
         "subscribers_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/subscribers",
         "stargazers_count" => 2,
         "license" => %{
           "key" => "wtfpl",
           "name" => "Do What The F*ck You Want To Public License",
           "node_id" => "MDc6TGljZW5zZTE4",
           "spdx_id" => "WTFPL",
           "url" => "https://api.github.com/licenses/wtfpl"
         },
         "commits_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/commits{/sha}",
         "has_issues" => true,
         "git_refs_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/git/refs{/sha}",
         "ssh_url" => "git@github.com:zastrixarundell/Catlixir.git",
         "releases_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/releases{/id}",
         "is_template" => false,
         "name" => "Catlixir",
         "languages_url" => "https://api.github.com/repos/zastrixarundell/Catlixir/languages",
         "open_issues_count" => 1,
         "contents_url" =>
           "https://api.github.com/repos/zastrixarundell/Catlixir/contents/{+path}",
         "watchers" => 2
       }
     ]}
  end
end
