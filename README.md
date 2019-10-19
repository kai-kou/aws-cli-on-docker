# aws-cli-on-docker

## Usage

```console
# credentialsがある前提
> ls ~/.aws
config      credentials models

> docker-aws --version
aws-cli/1.16.263 Python/2.7.16 Linux/4.9.184-linuxkit botocore/1.12.253

> docker-aws s3 mb s3://kai-cli-test
make_bucket: kai-cli-test

> echo "hoge" > hoge.txt

> docker-aws s3 cp hoge.txt s3://kai-cli-test
upload: ./hoge.txt to s3://kai-cli-test/hoge.txt

> docker-aws s3 cp s3://kai-cli-test/hoge.txt hoge2.txt
download: s3://kai-cli-test/hoge.txt to ./hoge2.txt

> ls
hoge.txt   hoge2.txt

> cat hoge2.txt
hoge

# 後片付け
> docker-aws s3 rm s3://kai-cli-test/hoge.txt
delete: s3://kai-cli-test/hoge.txt

> docker-aws s3 rb s3://kai-cli-test
remove_bucket: kai-cli-test
```

## Build

```console
# buld
> docker build -t aws-cli .

# install
> chmod +x docker-aws
> ln -s docker-aws /usr/local/bin/
```
