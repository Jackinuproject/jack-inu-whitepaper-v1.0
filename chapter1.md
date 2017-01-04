View the source of this page to see convenient snippets. 

# Do not use the toplevel heading

## This is the section heading

### Heading 3

#### Heading 4

##### Heading

### Snippets 
__*(view source by clicking the aA next to the branch setting)*__

<!-- copy/paste the next line in the source to add a page-break to PDF, ePUB, MOBI -->
<div class='page-break' />

<!-- copy/paste the next line in the source to add a page-break to only the student edition of the PDF, ePUB, MOBI -->
{% if book.edition in ['student', 'master'] %}<div class='page-break' />{% endif %}

<!-- copy/paste the next line in the source to add a page-break to only the instructor edition of the PDF, ePUB, MOBI -->
{% if book.edition in ['instructor', 'master'] %}<div class='page-break' />{% endif %}

<!-- wrap a block of text in a CSS class (advanced, can be used to style blocks one way or another, like coloring, font sizes, font faces, etc.) -->
{% blockClass "question" %}
1. What is your favorite color?

    1. blue
    1. red
    1. orange.
    1. AAAAAAArrrrgggghhhh!
{% endblockClass %}

