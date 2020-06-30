# sphinx-docs-netlify

[![drf-starter](https://circleci.com/gh/AleksaC/sphinx-docs-netlify.svg?style=svg)](https://circleci.com/gh/AleksaC/sphinx-docs-netlify)
[![Netlify Status](https://api.netlify.com/api/v1/badges/49f8c607-24c4-44e4-81e9-21948da29978/deploy-status)](https://app.netlify.com/sites/priceless-lamarr-bc7e62/deploys)
[![license](https://img.shields.io/badge/License-MIT-green.svg)](https://github.com/AleksaC/sphinx-docs-netlify/blob/master/LICENSE)

Keep sphinx docs up to date and deploy them to Netlify.

## About 📖
This repo includes a basic sphinx configuration for documenting python modules and
deploying docs to Netlify. Default Sphinx Makefile is modified to use apidoc to
automatically generate docs for specified modules. There is also a CircleCI job
that automatically updates the docs once new submodule has been added.

The main reason why I use this setup instead of Read The Docs is because I'm already
familiar with Netlify after using it on many sites. I also thinks that in terms of
features it is probably better than rtd.

**Note**: Do not set `docs/` as base in `netlify.toml` because it could lead to
stale documentation. Changes to docstrings are not reflected in `rst` files  generated
by `apidoc` but instead added by `autodoc` during html generation. Netlify cancels 
builds that don't affect the base directory, so changes to docstrings would not
trigger a build.

**Another note**: Netlify status badges consider canceled builds as failed, 
hopefully this gets fixed soon.

## Say hi 🙋‍♂️
- [Personal website](https://aleksac.me)
- <a target="_blank" href="http://twitter.com/aleksa_c_"><img alt='Twitter followers' src="https://img.shields.io/twitter/follow/aleksa_c_.svg?style=social"></a>
- aleksacukovic1@gmail.com
