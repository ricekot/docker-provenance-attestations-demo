FROM alpine as builder

ARG MY_PRECIOUS_SECRET
RUN echo "Har har har. Nobody should be able to see $MY_PRECIOUS_SECRET."

FROM alpine as final

RUN echo "Hurray! My secret doesn't exist in this layer."
