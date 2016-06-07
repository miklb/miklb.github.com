Jekyll::Hooks.register :posts, :pre_render do |post|
  post.content = post.content.sub("<!-- BRIDGY:LINK -->", <<~LIQUID)
    {% if page.mf-syndicate-to %}
    {{ post.content | append: ' <a href="https://brid.gy/publish/twitter"></a>' }}
    {% else %}
    {% if post.content %}
      {{ post.content }}
    {% else %}
      {{ content }}
    {% endif %}
    {% endif %}
  LIQUID
end
