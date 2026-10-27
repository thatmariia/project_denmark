"""Typer command-line application for Denmark project.

The CLI adapter translates command-line input into calls to reusable project
services. Command modules stay small so they are easy to test separately from
terminal formatting.
"""

import typer

from project_denmark.adapters.cli.commands import process

# The Typer app is the command registry. Add new commands by importing their
# modules and registering them below.
app = typer.Typer(help="Short description of our project")


@app.callback()
def root() -> None:
    """Run the application's subcommands."""


app.command(name="process")(process.command)


def main() -> None:
    """Run the command-line application."""
    app()
