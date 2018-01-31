@mixin news-item {
  @include text-style(body-text);
  max-width: none;

  padding: $lem / 2;
  padding-bottom: $lem;
  margin-top: $lem;

  background: url('{{ site.url }}{{ site.images }}news-background.png');

  &__date {
    @include news-item__date;
  }

  &__message {
    @include news-item__message;
  }
}
