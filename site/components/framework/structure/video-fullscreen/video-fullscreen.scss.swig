@mixin video-fullscreen {
  position: fixed;
  top: 50%;
  left: 50%;
  min-width: 100%;
  min-height: 100%;
  width: auto;
  height: auto;
  z-index: -100;
  transform: translateX(-50%) translateY(-50%);
  background: url({{ site.url }}{{ site.images }}{{ video.image }}) no-repeat;
  background-size: cover;
}
