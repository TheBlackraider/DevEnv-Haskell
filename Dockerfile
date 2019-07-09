FROM blackraider/devenv-base

MAINTAINER blackraider <er.blacky@gmail.com>

USER root

RUN pacman -Sy --noconfirm

RUN pacman -S --noconfirm ghc ghc-libs ghc-static alex c2hs happy cabal-install stack hlint hindent

VOLUME /home/developer/projects/haskell

USER developer

WORKDIR /home/developer


# ghcid
#RUN git clone https://github.com/ndmitchell/ghcid.git
#WORKDIR /home/blackraider/ghcid
#RUN stack install ghcid
#ADD --chown=developer:developer .ghci /home/developer/.ghci_sample


# vim-ghcid-quickfix
#WORKDIR /home/developer/.vim/bundle
#RUN git clone https://github.com/aiya000/vim-ghcid-quickfix
#RUN echo  "let g:ghcid_quickfix_showing = 'quickfix_on_error'" >> /home/developer/.vimrc 

# vim hindent
#RUN git clone https://github.com/alx741/vim-hindent
#RUN echo  "g:hindent_on_save = 1" >> /home/developer/.vimrc 
#RUN echo  "g:hindent_indent_size = 2" >> /home/developer/.vimrc 
#RUN echo  "g:hindent_line_length = 200'" >> /home/developer/.vimrc 
#RUN echo  "g:hindent_command = 'stack exec -- hindent'" >> /home/developer/.vimrc 

# vim-hindent (octol)
#RUN git clone https://github.com/octol/vim-hindent
#RUN echo "let g:hindent_style = 'gibiansky'" >> /home/developer/.vimrc


WORKDIR /home/developer


RUN mkdir -p /home/developer/projects/haskell



