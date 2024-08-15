cd "/home/pullenss/projects/testingGITHUB"
git init --initial-branch=develop
git add .
git commit -m 'First commit :)'
git  remote add origin git@gitl01-int-p.rivm.nl:dara/testingGITHUB.git
git push --set-upstream origin develop

r -e 'roxygen2::roxygenize()'
