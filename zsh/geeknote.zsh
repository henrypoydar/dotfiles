# Wrapper around Geeknote console utility for Evernote
# Provides simple shortcuts for editing and creating notes
# Assumes an installation of Geeknote in GEEKNOTE

GEEKNOTE=~/work/hpoydar/geeknote/geeknote.py
PYTHON=`which python`
USAGE="usage: gn <create|edit|setup> <title> <tags>"
EDITOR=vim  # setting to mvim didn't seem to save properly

gn () {

  if [ $# -lt 1 ]; then
    echo $USAGE
    return
  fi

  case "$1" in
  create)
    if [ $# -lt 2 ]; then
      echo "You need a title"
      echo $USAGE
      return
    fi
    if [ $# -gt 2 ]; then
      $PYTHON $GEEKNOTE create --title $2 --content " " --tags $3
    else
      $PYTHON $GEEKNOTE create --title $2 --content " "
    fi
    $PYTHON $GEEKNOTE edit --note $2 --content "WRITE"
    ;;
  edit)
    if [ $# -lt 2 ]; then
      echo "You need a title"
      echo $USAGE
      return
    fi
    $PYTHON $GEEKNOTE edit --note $2 --content "WRITE"
    ;;
  setup)
    $PYTHON $GEEKNOTE settings --editor $EDITOR
    $PYTHON $GEEKNOTE login
    ;;
  *)
    echo $USAGE
    return
  esac

}
