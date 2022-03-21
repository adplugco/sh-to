dev='URL="development"'
live='URL="live"'
res=""
if [ $1 == "dev" ]; then
    res=$dev
else
    res=$live
fi

sed -i "" "s/URL=.*/$res/g" .env
cat .env
echo "gcloud deploy will run here,after URL changes"
