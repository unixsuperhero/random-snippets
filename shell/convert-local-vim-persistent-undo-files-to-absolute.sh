
################
### ORIGINAL ###
################

## cat <<FILENAMES | while read file; do bn="$(basename "$file")"; dn="$(dirname "$file")"; newname="${dn//\//%}%${{bn/./}/.un~/}"; echo "bn = ${bn}"; echo "dn = ${dn}"; echo "newname = ${newname}"; done

# cat <<FILENAMES | while read file
# do bn="$(basename "$file")"
#   dn="$(dirname "$file")"
#   newname="${dn//\//%}%${{bn/./}/.un~/}"
#   echo "bn = ${bn}"
#   echo "dn = ${dn}"
#   echo "newname = ${newname}"
# done


function stripundo() {
  while read file
  do
    bn="$(basename "$file")"
    bnn="${bn/./}"
    dn="$(dirname "$file")"
    newname="${dn//\//%}%${bnn/.un~/}"

    #echo "bn = ${bn}"
    #echo "bnn = ${bnn}"
    #echo "dn = ${dn}"
    echo "oldname = ${file}"
    echo "newname = ${newname}"
  done
}

cat <<FILENAMES | stripundo
/var/www/..one.ext.un~
/var/www/.two.mp3.un~
/usr/local/http/something/.asdf.un~
/Users/jearsh/Desktop/.froglegs.un~
/Users/jearsh/Desktop/.he.as.df.f.un~
FILENAMES





