---
title: "Document Title"
description: "Description to be inserted in HTML Meta description (SEO!!!)."
tags:
  - tags-for-the-tags-page
---

# Document Title

## Template basics

* **Document title** and first (and unique) **H1 title** should be equal.
* **Description** is used by Google to discover the document and shown as a resume of it on Google's search site. It should be between 110 and 160 characters.
* Validate tags are correct with the script:

```bash
# create this function:
function tags() { head -10 $1 | grep "^  -" | sort ;}
export -f tags
# execute from documentation root directory:
find . -name "*.md" -print -exec bash -c "tags \"{}\"" \; | grep -v ".md" | sort | uniq -c
```

* Images are to be kept on a directory with the same name as the document. Place it on a `assets/images/document_name' directory.
* Images can have [attributes](https://squidfunk.github.io/mkdocs-material/reference/images/). Example:

![Image title](/docs/platform/assets/images/logo/mmesh_logo_favicon_512x512.png){ align=left; width="150px" }

!!! note "Do not use absolute paths!"

    Do not use absolute paths. The previous is a exception for this template to work from any directory, but link your images to your related `../assets/images/<document>/<image.png>` file.

* Image compression: before to publish documents, images should be optimized using [Trimage](https://trimage.org/)

```bash
trimage -d .
```

* Links to other documents do not require path thanks to the [autolinks](https://github.com/zachhannum/mkdocs-autolinks-plugin) plugin. For the same reason, document names can not be duplicated.

* Tabbed content: Use this example to add tabbed content:

You can <action> using mmesh [webUI](https://mmesh.io/replace-menu-option) or [mmeshctl](mmeshctl-replace_command.md) CLI.


/// tab | webUI
    select: true

First tab content here.

///

/// tab | CLI

Second tab content here.

///

* Admonitions: use admonitions to highlight messages.

!!! important "Admonitions"

    Use [Admonitions](https://squidfunk.github.io/mkdocs-material/reference/admonitions/) where required.


Supported Admonition types are:

* note
* abstract
* info
* tip
* success
* question
* warning
* failure
* danger
* bug
* example
* quote
