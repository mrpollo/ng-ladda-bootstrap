This directive is built from the [ladda-bootstrap](https://github.com/msurguy/ladda-bootstrap) library

### Usage:

```javascript
// inside directive or controller
//...
	$scope.laddaEnabled = true;
// where your conditional logic applies
//...
	if somethingHappens {
		$scope.laddaEnabled = false;
	}
//...
```
```html
<div ng-ladda-bootstrap ladda-toggle='laddaEnabled' class='btn btn-default ladda-button'>
	Clck here
</div>
```

### Contact:

Ramón Roche, **email**: [mrpollo@gmail.com](mailto:mrpollo@gmail.com), **twitter**: [@mrpollo](https://twitter.com/mrpollo)
