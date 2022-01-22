if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/FHKL-Bots432/Mother-Earth-Bot.git /Mother-Earth-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Mother-Earth-Bot
fi
cd /Mother-Earth-Bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
