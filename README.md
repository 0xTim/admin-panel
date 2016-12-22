# Admin panel
[![Language](https://img.shields.io/badge/Swift-3-brightgreen.svg)](http://swift.org)
[![Build Status](https://travis-ci.org/nodes-vapor/admin-panel.svg?branch=master)](https://travis-ci.org/nodes-vapor/admin-panel)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/nodes-vapor/admin-panel/master/LICENSE)

#Installation
Update your `Package.swift` file.
```swift
.Package(url: "https://github.com/nodes-vapor/admin-panel", majorVersion: 0)
```


#### Config
Create config adminpanel.json

```
{
    "name": "Sandbox2",
    "unauthorizedPath": "/admin/login",
    "loadRoutes": true,
    "profileImageFallbackUrl": "https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg"
}


```

### main.swift
```
import AdminPanel
```

And add provider
```
try drop.addProvider(AdminPanel.Provider.self)
```

Either copy the views in or change the folder to read the views from, fx
```
drop.view = LeafRenderer(
    viewsDir: Droplet().workDir + "/Packages/AdminPanel-0.1.1/Sources/AdminPanel/Resources/Views"
)
```
### Seed data
```
vapor run admin-panel:seed
```

### Dependencies
https://github.com/nodes-vapor/storage

### UI package
Github: https://github.com/nodes-frontend/nodes-ui

Doc: https://nodes-frontend.github.io/nodes-ui/
