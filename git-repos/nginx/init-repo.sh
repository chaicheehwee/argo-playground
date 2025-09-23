export GIT_URL=http://gitea.dev.me:30001
export REPO_OWNER=admin
export REPO_NAME=nginx

cd code
git init
git checkout -b main
git add .
git commit -m "First commit"
git remote add origin ${GIT_URL}/${REPO_OWNER}/${REPO_NAME}.git
git push origin main
cd -