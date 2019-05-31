FROM nixos/nix:2.2.1

RUN useradd --create-home appuser

WORKDIR /home/appuser

USER appuser

COPY . .

RUN nix-build release.nix -A project

EXPOSE 10000

CMD ["./result/bin/main"]
