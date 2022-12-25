if [ -z $LANG ]
  set -x LANG en_US.UTF-8
end

if [ -z $MM_CHARSET ]
  set -x MM_CHARSET $LANG
end
