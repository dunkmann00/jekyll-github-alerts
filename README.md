# jekyll-github-alerts

[![Gem Version](https://badge.fury.io/rb/jekyll-github-alerts.svg)](https://badge.fury.io/rb/jekyll-github-alerts.svg)

A Jekyll plugin to render GitHub style markdown alerts.

> [!IMPORTANT]
> This plugin is meant to be used by
> [jekyll-v4-theme-primer](https://github.com/dunkmann00/primer). It will still
> work without it, but the styling won't be *correct*.

## Usage

1. Add this to your `Gemfile`

    ```rb
    gem 'jekyll-github-alerts'
    ```

2. Add this to your jekyll `_config.yml`

    ```yml
    plugins:
      - jekyll-github-alerts
    ```

3. Use the same syntax in your markdown as you would on GitHub
    ```markdown
    > [!NOTE]
    > Useful information that users should know, even when skimming content.

    ```

## Supported Alert Styles

Below are the currently supported alerts:

> [!NOTE]
> Useful information that users should know, even when skimming content.

> [!TIP]
> Helpful advice for doing things better or more easily.

> [!IMPORTANT]
> Key information users need to know to achieve their goal.

> [!WARNING]
> Urgent info that needs immediate user attention to avoid problems.

> [!CAUTION]
> Advises about risks or negative outcomes of certain actions.

For more information on GitHub style alerts check out GitHub's
[docs](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#alerts).
