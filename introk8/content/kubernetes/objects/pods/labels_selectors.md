+++
title = "Labels and Selectors"
date = 2018-12-09T17:00:31-05:00
weight = 422
+++

### Labels

Labels are key/value pairs that are attached to objects, such as pods that help to identify that object.


### Selectors

Label Selectors help client/user identify a set of objects.

```yaml
spec:
  selector:
    matchLabels:
      app: mysql
  strategy:
    type: Recreate
  template:
    metadata:
      labels:
        app: mysql
```
   
### Demo 

Create labels & use selector to identify set of objects
