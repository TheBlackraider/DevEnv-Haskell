FROM blackraider/devenv-base

MAINTAINER blackraider <er.blacky@gmail.com>

USER root

RUN pacman -Sy --noconfirm

RUN pacman -S --noconfirm ghc ghc-libs ghc-static alex c2hs happy cabal-install stack hlint hindent

VOLUME /home/developer/projects/haskell

USER developer

WORKDIR /home/developer


# ghcid
RUN git clone https://github.com/ndmitchell/ghcid.git
WORKDIR /home/blackraider/ghcid
RUN stack install ghcid
ADD --chown=developer:developer .ghci /home/developer/.ghci_sample


# vim-ghcid-quickfix
WORKDIR /home/developer/.vim/bundle
RUN git clone https://github.com/aiya000/vim-ghcid-quickfix
RUN echo  "let g:ghcid_quickfix_showing = 'quickfix_on_error'" >> /home/developer/.vimrc 

WORKDIR /home/developer


RUN mkdir -p /home/developer/projects/haskell



