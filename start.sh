if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://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@github.com/phoenixtgbot/FilterBot /main
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Eva
fi
cd /main
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
