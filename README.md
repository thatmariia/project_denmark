# Denmark project

[![CI](https://github.com/thatmariia/project_denmark/actions/workflows/tests.yml/badge.svg)](https://github.com/thatmariia/project_denmark/actions/workflows/tests.yml)
[![Documentation](https://img.shields.io/badge/docs-online-blue?labelColor=gray)](https://thatmariia.github.io/project_denmark/)
[![Usage](https://img.shields.io/badge/usage-guide-blue?labelColor=gray)](https://github.com/thatmariia/project_denmark/blob/HEAD/docs/usage.md)
[![PyPI](https://img.shields.io/pypi/v/project-denmark)](https://pypi.org/project/project-denmark/)
[![License](https://img.shields.io/badge/license-view-blue?labelColor=gray)](https://github.com/thatmariia/project_denmark/blob/HEAD/LICENSE)
![Tool Type](https://img.shields.io/badge/tool%20type-Command--line%20tool%20%7C%20Library-blue?labelColor=gray)

Short description of our project

## Purpose

Blah blah blah


## Purpose Categories

- Data analysis

## Research Topics

- [Data mining](http://edamontology.org/topic_3473)

## Intended Audience

- Researchers (academia)
- Lab scientists

## Installation

Install the published package from PyPI:

```bash
poetry add project-denmark
```

## Usage

```bash
poetry run python -m project_denmark
```

## Functions

<details>
<summary>Genome indexing</summary>

```yaml
# biotools-function
operation:
- term: "Genome indexing"
  uri: "http://edamontology.org/operation_3211"
input:
- data:
    term: "Sequence"
    uri: "http://edamontology.org/data_2044"
output:
- data:
    term: "Genome index"
    uri: "http://edamontology.org/data_3210"
```

</details>

## Documentation

Read the [project documentation](https://thatmariia.github.io/project_denmark/).

- User guide: installation, configuration, usage, and examples
- Developer guide: development, tests, contribution, and reference

## Support

Support and contact options are documented in [`SUPPORT.md`](SUPPORT.md).
- github issues

## Access

**Access type:** free-with-restrictions.
Only Magnus can use it for free

## Platform support

- Platform independent

## Related Software

- bumpy - extends it

## Development

Set up the development environment with:

```bash
poetry install --all-extras
```
Run the configured checks:

```bash
poetry run ruff format --check .
poetry run ruff check .
poetry run mypy src
poetry run python -m pytest
```
See [`CONTRIBUTING.md`](CONTRIBUTING.md) for the contribution and code-review policy.

## Citation

If you use this software, cite it using [`CITATION.cff`](CITATION.cff).

## Legal and Licensing

This project is licensed under `https://spdx.org/licenses/Apache-2.0.html`. See `LICENSE` for the full license text.

<!-- rs-files-templates:README:end -->
<!-- Add project-specific README content below this line; it is preserved when the generated README is refreshed. -->
