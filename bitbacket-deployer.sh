# Script download player from bitbucket repositor

# @param1 branch of the player on bitbucket
# @param2 folder to extract the player
# @param3 bitbucket project URL
# @param4 userID on bitbucket
# @param5 user Password on bitbucket

defaultBranch="master"


if [ -z "$2" ]
  then
    destination="$defaultBranch"
  else
    destination=$2
fi


if [ -z "$1" ]
  then
    branch=$defaultBranch
  else
    branch=$1
fi

#create backup of previous version
if [ -d "$destination" ]; then
  name=$destination-$(date '+%d-%b-%Y')
  echo $name
  if [[ -e $name ]] ; then
      i=0
      while [[ -e $name-$i ]] ; do
          let i++
      done
      name=$name-$i
  fi
  touch $name.ext
  mv $destination $name
fi

echo [info] downloading branch $branch

file=$branch'.zip'

if [ -f $file ] ; then
   rm $file
fi

dpa=$3$file
echo $dpa

sudo wget --user=$4 --password=$5 $dpa

unzip -o $branch'.zip' -d $destination

shopt -s dotglob # To include hidden files in the move command


function moveSub {
  local dest=$1
  if [ `ls $dest | wc -l` == 1 ]; then
    local subdir=`ls $1`
    moveSub "$dest/$subdir"
    mv $dest/$subdir/* $dest/
    rmdir $dest/$subdir
  fi
}

moveSub "$destination"

if [ -f $file ] ; then
  rm $file
fi

echo [info] Player downloaded to $destination
