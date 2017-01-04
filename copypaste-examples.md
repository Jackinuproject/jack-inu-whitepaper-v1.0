These examples are for the purpose of showing you how to do things that are a little more "advanced" than basic markdown, but needed for making beautiful docs.

## Add a variable and reference it in the book

Adding a new variable to the configuration file `book.json` lets you control the content from the configuration, either by setting values (like a product name) from the configuration, or by creating a condition for conditional rendering. 

Variables are name-value pairs given as a quoted pair separated by a colon:

```
"name": "value"
```

Variables can be accessed in your content by referencing them using the template language:

{% raw %}
```
{{ book.newVariableName }} 

{% if book.newVariableName == "New Value" %}
Content that will only be rendered if the new variable is equal to `"New Value"` in the book.json
{% endif %}
```
{% endraw %}

To add a variable:

1. Make sure you are on "branch: master" according to the "version" bar ![](/assets/Screen Shot 2016-12-27 at 4.49.02 PM.png)
2. Edit the `"variables"` section of [book.json](book.json) 

##### book.json (before)
```json
{
    "variables": {
        "edition": "master",
        "slides": false,
        "outputContent": [
            "content",
            "notes"
        ],
        "productName": "T Mobile Router"
    },
    "plugins": ["wrapclass", "addcssjs"],
    "pluginsConfig": {
        "addcssjs": {
            "css": ["https://fontlibrary.org/face/hk-grotesk"]
        }
    }
}
```

##### book.json (after)

```json
{
    "variables": {
        "edition": "master",
        "slides": false,
        "outputContent": [
            "content",
            "notes"
        ],
        "productName": "T Mobile Router",
        "newVariableName": "New Value"
    },
    "plugins": ["wrapclass", "addcssjs"],
    "pluginsConfig": {
        "addcssjs": {
            "css": ["https://fontlibrary.org/face/hk-grotesk"]
        }
    }
}
```

> **Hint** Make sure that there is a comma before the variable you just added. Make sure there is *no* comma after the variable, if it is the last one. book.json **must** be valid JSON for your book to be created correctly, and Gitbook might not tell you that it isn't.

> Variable *names* should **never** contain spaces.

## Using variables in content

### Using the value of a variable as text

Copy the bits in the source of this page **between, but not including** the \`\`\` lines:

{% raw %}
```
{{ book.variableName }}
```
{% endraw %}

### Controlling whether a block of text is rendered

Copy the bits in the source of this page **between, but not including** the \`\`\` lines:

{% raw %}
```
{% if book.variableName in ['value1', 'value2'] %}
Insert the text you want to conditionally render here.
{% endif %}
```
{% endraw %}


