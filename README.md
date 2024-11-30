<h3 align="center"><img src="assets/streamliner.png" height="150px"></h3>

# Streamliner

A sane RSS reader for the modern age.

## Planned features

- [ ] **Syndicated feeds**: Allow multiple feed URLs to be combined into a
  single feed, for example if they belong to a single creator.
- [ ] **Proper tag support**: Allow feeds to have multiple tags.
- [ ] **Views**: Allow the creation of views which filter feeds based on tags,
  keywords, date, read status, etc.
- [ ] **Inline viewer**: Allow rendering the contents of posts inside the
  application instead of just listing URLs.

## Installation

Currently, installation is only supported via Cargo:

```sh
cargo install streamliner
```

## Contributing

Clone the repository and download dependencies:

```sh
git clone https://github.com/icorbrey/streamliner.git
cd streamliner
nix develop
cargo build
```

If you're not using Nix, make sure you have the following development tools
installed:

- [`sqlx-cli`][sqlx-cli]

## License

Streamliner is distributed under the GPLv3 license. See [LICENSE][license] for
details.

[license]: ./LICENSE
[sqlx-cli]: https://github.com/launchbadge/sqlx/tree/main/sqlx-cli
