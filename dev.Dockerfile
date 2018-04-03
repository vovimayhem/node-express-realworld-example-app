# 1: Begin with Node 9.10:
FROM node:9.10

# 2: Set the project home & binaries:
ENV HOME=/usr/src PATH=/usr/src/bin:$PATH

# 3: Set the project source as the working dir:
WORKDIR /usr/src

# 4: Install yarn:
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# 5: Install check-dependencies:
RUN npm install -g check-dependencies
