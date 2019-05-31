for i in {1..20}; do
    git checkout -b mybranch$i
    echo example > test$i
    git add .
    git commit -m "Adding file test$i"
    git push --set-upstream origin mybranch$i
    git request-pull master origin mybranch$i
    echo "CREATED PR"
done
