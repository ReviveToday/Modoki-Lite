# Modoki Lite

![](/screenshot.png)

Jekyll Bootstrap theme adjusted for [ReviveToday][rt]. Forked from [Jonah Aragon's Bootstrap Template][upstream], and using [Bootstrap 5]().

Since this has been forked, a majority of the documentation can be found on [the original repository][upstream].

## Install

Unlike the original, this is not found on the RubyGems platform yet. This is installed on ReviveToday using the [Jekyll Remote Theme](https://github.com/benbalter/jekyll-remote-theme) plugin.

```yaml
remote_theme: ReviveToday/Modoki-Lite@porting
```

## Theme Contents

The following is in [addition to the original theme](https://github.com/jonaharagon/jekyll-bootstrap-theme#theme-contents).

### Hero Banner on Home Template

The banner on the homepage can be customised using the following front matter:

```yaml
banner: location/of/big/image.png
layout: home

```

### Navigation Bars

The navigation bar system has been changed to support a few more options, such as allowing you to name the links, and specify either a page on Jekyll or an external link. This also supports submenu (and a further 1 more submenu) in the header bar.

```yaml
  # Header menu has 2 levels of submenu.
  header_menu:
  - title: Example 1
    page: about.md
  - title: External Link
    link: https://google.com
  - title: Submenu Item
    menu:
    - title: Submenu Page
      link: mailto:cool@thing.com
      menu:
      - title: Leonardo DiCaprio
        page: about.md
  
  # Footer menu does not support submenu.
  footer_menu:
  - title: Privacy Policy
    page: privacy.md
```

* `header_menu` appears in the top, right hand side of the Bootstrap header. This will collapse into a button when the window is small/mobile.
  * Submenu's - a non-native Bootstrap feature - will show alongside Submenus in mobile mode.
* `footer_menu` appears at the bottom of the page, but above the Copyright notice.

### Disqus Opt-in

In this theme, the Disqus integration from the Minima theme has been adjusted to require the visitor to click a button before the Disqus JavaScript is loaded onto the page. This keeps the user in-control of their privacy settings without resorting to the website depending on an EU cookie control banner.

```yaml
disqus:
  shortname: retro-playstation
  show_policy: true
```

`show_policy` will show a warning underneath the Disqus button to inform them of what they'll be agreeing to. 

## Contributing

Please consider contributing to the [original repository][upstream], as this is the wonderful foundation the theme has built upon. We will consider and accept PRs to adjust custom features or ticketed branded items where relevant, but bug fixes of features incoming from the original theme would be better suited there. Of course, please check in those situations that you are able to reproduce the bug on the original template.

## License

Continuing from the parent and in the spirit of Free, Open Source Software, the theme is also available under the terms of the [MIT License](https://opensource.org/licenses/MIT).

[rt]: https://revive.today
[upstream]: https://github.com/jonaharagon/jekyll-bootstrap-theme
