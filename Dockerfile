FROM clojure:lein-alpine
WORKDIR /tmp
ADD project.clj /tmp
RUN lein deps
ADD . /tmp
CMD ["lein", "cljfmt", "check"]