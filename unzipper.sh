flare ()
{
  # Set Variables
  DATE=`date +'%m-%d'`
  FILENAME=$2-${DATE}

  if [[ $1 =~ \.zip$ ]]; then

    # Unzip the File into ~/.flare/
    unzip $1 -d ~/.flare/;

    # Remove Zipped File
    rm -rf $1;

    # Change Directory into ~/.flare and clear history
    cd ~/.flare; c;

    if [ -z "$2"]; then
      FILENAME='template-flare'
    fi

   cd */; pwd; ls -A;
    # vim status.log # -c 'vs logs/agent.log'
  else
    pwd; ls -A; echo "There are no flares to unzip.. Please try again"
  fi
}

