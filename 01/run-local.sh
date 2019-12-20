docker run \
  --name=mongo \
  --rm \
  --network=knote \
  mongo &&


docker run \
  --name=knote \
  --rm \
  --network=knote \
  -p 3000:3000 \
  -e MONGO_URL=mongodb://mongo:27017/dev \
  knote
