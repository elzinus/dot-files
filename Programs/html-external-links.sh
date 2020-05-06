#
# html-external-links.sh
# Script to add target="_blank" to links with http en https
# Takes one argument (filename.html)
# TODO: Make validation for existing _blank tags

sed -i s/\'/\"/g $1
sed -i 's|href="http|target="_blank" href="http|g' $1
