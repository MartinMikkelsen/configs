#! /bin/bash
git add -A 
read -p "commit text" desc
git commit -m "$desc"
git push
