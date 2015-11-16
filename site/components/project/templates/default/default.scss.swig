@include html-css-reset;

html {
  body {
    @include semantic-html5-titles;
    @include typography-reset;
    @include text-style(default);

    @include default--landscape;
    @include default--desktop;
    @include default--mobile-landscape;

    background-image: url("{{ site.url }}{{ site.images }}little-pluses.png");
  }
}
