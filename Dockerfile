FROM ubuntu:20.04

RUN apt-get update \
 && apt-get install -y python git zsh curl sudo pass

RUN useradd \
      --create-home \
      --shell /usr/bin/zsh \
      --uid 1000 \
      --groups sudo \
      ubuntu

USER ubuntu

ENV SHELL=/usr/bin/zsh

WORKDIR /home/ubuntu

RUN git clone https://github.com/ericcitaire/dotfiles.git ~/.dotfiles \
 && git -C ~/.dotfiles submodule update --init --recursive \
 && .dotfiles/install

ENTRYPOINT [ "/usr/bin/zsh", "-l" ]