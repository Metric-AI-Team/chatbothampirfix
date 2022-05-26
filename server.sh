!/bin/sh

if [ -z "$PORT"]
then
  PORT=5005
fi

rasa run --enable-api --port $PORT
rasa run actions
python -m http.server