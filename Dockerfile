FROM blackraider/devenv-base

MAINTAINER blackraider <er.blacky@gmail.com>

USER root

RUN pacman -Sy --noconfirm

RUN pacman -S --noconfirm ghc ghc-libs ghc-static alex c2hs happy cabal-install stack

VOLUME /home/developer/projects/haskell

USER developer

WORKDIR /home/developer

RUN mkdir -p /home/developer/projects/haskell



