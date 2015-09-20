# API Examples

## OAuth

{"provider"=>"github",
 "uid"=>"2336088",
 "info"=>
  {"nickname"=>"scarver2",
   "email"=>"stan@a1webconsulting.com",
   "name"=>"Stan Carver II",
   "image"=>"https://avatars.githubusercontent.com/u/2336088?v=3",
   "urls"=>
    {"GitHub"=>"https://github.com/scarver2", "Blog"=>"www.a1webconsulting.com"}},
 "credentials"=>
  {"token"=>"0c644dfd0bd8eebae9a3263d59029d0b14acc05f", "expires"=>false},
 "extra"=>
  {"raw_info"=>
    {"login"=>"scarver2",
     "id"=>2336088,
     "avatar_url"=>"https://avatars.githubusercontent.com/u/2336088?v=3",
     "gravatar_id"=>"",
     "url"=>"https://api.github.com/users/scarver2",
     "html_url"=>"https://github.com/scarver2",
     "followers_url"=>"https://api.github.com/users/scarver2/followers",
     "following_url"=>"https://api.github.com/users/scarver2/following{/other_user}",
     "gists_url"=>"https://api.github.com/users/scarver2/gists{/gist_id}",
     "starred_url"=>"https://api.github.com/users/scarver2/starred{/owner}{/repo}",
     "subscriptions_url"=>"https://api.github.com/users/scarver2/subscriptions",
     "organizations_url"=>"https://api.github.com/users/scarver2/orgs",
     "repos_url"=>"https://api.github.com/users/scarver2/repos",
     "events_url"=>"https://api.github.com/users/scarver2/events{/privacy}",
     "received_events_url"=>"https://api.github.com/users/scarver2/received_events",
     "type"=>"User",
     "site_admin"=>false,
     "name"=>"Stan Carver II",
     "company"=>"A1 Web Consulting",
     "blog"=>"www.a1webconsulting.com",
     "location"=>"Pensacola, FL",
     "email"=>nil,
     "hireable"=>nil,
     "bio"=>nil,
     "public_repos"=>56,
     "public_gists"=>7,
     "followers"=>4,
     "following"=>0,
     "created_at"=>"2012-09-13T02:06:06Z",
     "updated_at"=>"2015-09-20T02:32:49Z"}}}


## Search API

g = Github.repos.list user: 'ryanb', per_page: 1

<Hashie::Mash
archive_url="https://api.github.com/repos/ryanb/abingo/{archive_format}{/ref}"
assignees_url="https://api.github.com/repos/ryanb/abingo/assignees{/user}"
blobs_url="https://api.github.com/repos/ryanb/abingo/git/blobs{/sha}"
branches_url="https://api.github.com/repos/ryanb/abingo/branches{/branch}"
clone_url="https://github.com/ryanb/abingo.git"
collaborators_url="https://api.github.com/repos/ryanb/abingo/collaborators{/collaborator}"
comments_url="https://api.github.com/repos/ryanb/abingo/comments{/number}"
commits_url="https://api.github.com/repos/ryanb/abingo/commits{/sha}"
compare_url="https://api.github.com/repos/ryanb/abingo/compare/{base}...{head}"
contents_url="https://api.github.com/repos/ryanb/abingo/contents/{+path}"
contributors_url="https://api.github.com/repos/ryanb/abingo/contributors"
created_at="2010-05-17T03:44:10Z"
default_branch="master"
description="Fork of A/Bingo plugin for Rails."
downloads_url="https://api.github.com/repos/ryanb/abingo/downloads"
events_url="https://api.github.com/repos/ryanb/abingo/events"
fork=false
forks=19
forks_count=19
forks_url="https://api.github.com/repos/ryanb/abingo/forks"
full_name="ryanb/abingo"
git_commits_url="https://api.github.com/repos/ryanb/abingo/git/commits{/sha}"
git_refs_url="https://api.github.com/repos/ryanb/abingo/git/refs{/sha}"
git_tags_url="https://api.github.com/repos/ryanb/abingo/git/tags{/sha}"
git_url="git://github.com/ryanb/abingo.git"
has_downloads=true
has_issues=true
has_pages=false
has_wiki=true
homepage="http://www.bingocardcreator.com/abingo/"
hooks_url="https://api.github.com/repos/ryanb/abingo/hooks"
html_url="https://github.com/ryanb/abingo"
id=670347
issue_comment_url="https://api.github.com/repos/ryanb/abingo/issues/comments{/number}"
issue_events_url="https://api.github.com/repos/ryanb/abingo/issues/events{/number}"
issues_url="https://api.github.com/repos/ryanb/abingo/issues{/number}"
keys_url="https://api.github.com/repos/ryanb/abingo/keys{/key_id}"
labels_url="https://api.github.com/repos/ryanb/abingo/labels{/name}"
language="Ruby"
languages_url="https://api.github.com/repos/ryanb/abingo/languages"
merges_url="https://api.github.com/repos/ryanb/abingo/merges"
milestones_url="https://api.github.com/repos/ryanb/abingo/milestones{/number}"
mirror_url=nil
name="abingo"
notifications_url="https://api.github.com/repos/ryanb/abingo/notifications{?since,all,participating}"
open_issues=0
open_issues_count=0
owner=#<Hashie::Mash
avatar_url="https://avatars.githubusercontent.com/u/161?v=3"
events_url="https://api.github.com/users/ryanb/events{/privacy}"
followers_url="https://api.github.com/users/ryanb/followers"
following_url="https://api.github.com/users/ryanb/following{/other_user}"
gists_url="https://api.github.com/users/ryanb/gists{/gist_id}"
gravatar_id=""
html_url="https://github.com/ryanb"
id=161
login="ryanb"
organizations_url="https://api.github.com/users/ryanb/orgs"
received_events_url="https://api.github.com/users/ryanb/received_events"
repos_url="https://api.github.com/users/ryanb/repos"
site_admin=false
starred_url="https://api.github.com/users/ryanb/starred{/owner}{/repo}"
subscriptions_url="https://api.github.com/users/ryanb/subscriptions"
type="User"
url="https://api.github.com/users/ryanb">
private=false
pulls_url="https://api.github.com/repos/ryanb/abingo/pulls{/number}"
pushed_at="2010-05-17T04:19:37Z"
releases_url="https://api.github.com/repos/ryanb/abingo/releases{/id}"
size=111
ssh_url="git@github.com:ryanb/abingo.git"
stargazers_count=43
stargazers_url="https://api.github.com/repos/ryanb/abingo/stargazers"
statuses_url="https://api.github.com/repos/ryanb/abingo/statuses/{sha}"
subscribers_url="https://api.github.com/repos/ryanb/abingo/subscribers"
subscription_url="https://api.github.com/repos/ryanb/abingo/subscription"
svn_url="https://github.com/ryanb/abingo"
tags_url="https://api.github.com/repos/ryanb/abingo/tags"
teams_url="https://api.github.com/repos/ryanb/abingo/teams"
trees_url="https://api.github.com/repos/ryanb/abingo/git/trees{/sha}"
updated_at="2015-05-10T21:07:00Z"
url="https://api.github.com/repos/ryanb/abingo"
watchers=43
watchers_count=43>

g = Github.repos.list repo: 'letter_opener', per_page: 1
