FROM tdiary/blogkit:latest
LABEL maintainer "@tdtds <t@tdtds.jp>"

WORKDIR /usr/src/app
RUN echo 'gem "tdiary-blogkit"' >> Gemfile.local; \
    echo 'gem "tdiary-io-mongodb"' >> Gemfile.local; \
    echo 'gem "tdiary-style-gfm"' >> Gemfile.local; \
    echo 'gem "tdiary-style-rd"' >> Gemfile.local; \
    echo 'gem "omniauth"' >> Gemfile.local; \
    echo 'gem "omniauth-twitter"' >> Gemfile.local; \
    echo 'gem "dalli"' >> Gemfile.local; \
    echo 'gem "memcachier"' >> Gemfile.local; \
    echo 'gem "octokit"' >> Gemfile.local; \
    bundle --path=vendor/bundle --without=development:test --jobs=4 --retry=3; \
