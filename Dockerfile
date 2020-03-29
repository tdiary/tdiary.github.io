FROM tdiary/blogkit:latest
LABEL maintainer "@tdtds <t@tdtds.jp>"

WORKDIR /usr/src/app
RUN echo 'gem "tdiary-io-mongodb"' >> Gemfile.local; \
    echo 'gem "omniauth"' >> Gemfile.local; \
    echo 'gem "omniauth-twitter"' >> Gemfile.local; \
    echo 'gem "dalli"' >> Gemfile.local; \
    echo 'gem "memcachier"' >> Gemfile.local; \
    bundle --path=vendor/bundle --without=development:test --jobs=4 --retry=3; \
