#
# This will split up the Core modules to its own github repo
#

mkdir -p october
pushd october
./../git-subsplit.sh init git@github.com:octobercms/october.git
./../git-subsplit.sh update
./../git-subsplit.sh publish --heads="1.1" --tags="v1.1.2" modules/backend:git@github.com:octoberrain/backend.git
./../git-subsplit.sh publish --heads="1.1" --tags="v1.1.2" modules/cms:git@github.com:octoberrain/cms.git
./../git-subsplit.sh publish --heads="1.1" --tags="v1.1.2" modules/system:git@github.com:octoberrain/system.git
./../git-subsplit.sh publish --heads="1.1" --tags="v1.1.2" themes/demo:git@github.com:octoberrain/demo-theme.git
./../git-subsplit.sh publish --heads="1.1" --tags="v1.1.2" plugins/october/demo:git@github.com:octoberrain/demo-plugin.git
popd
