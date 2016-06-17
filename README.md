# vision-logcheck

[![Build Status](https://travis-ci.org/vision-it/vision-logcheck.svg?branch=production)](https://travis-ci.org/vision-it/vision-logcheck)


## Usage

Include in the *Puppetfile*:

```
mod vision_logcheck:
    :git => 'https://github.com/vision-it/vision-logcheck.git,
    :ref => 'production'
```

Include in a role/profile:

```puppet
contain ::vision_logcheck
```

