from resin/raspberry-pi2-golang

RUN set -ex; \
      for pkg in elastic/beats/filebeat; \
      do \
        echo $pkg; \
        go get github.com/$pkg; \
        go build github.com/$pkg \
        && go install github.com/$pkg \
        && rm -rf /go/src/github.com/$pkg ;\
      done; \
      rm -rf /go/src/*

