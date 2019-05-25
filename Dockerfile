FROM nixos/nix

WORKDIR /usr/share/crownix

COPY . .

RUN nix-build release.nix -A project

EXPOSE 10000

CMD ["./result/bin/main"]
