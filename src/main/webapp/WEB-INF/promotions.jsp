<!DOCTYPE html>
<html lang="en">
  <head>
    <link rel="stylesheet" href="./libs/bootstrap-css-only/css/bootstrap.min.css" />
  </head>
  <body ng-app="myApp">
    <div class="container" ng-controller="AppController">
      <div class="page-header">
        <h1>manage promotions page</h1>
      </div>
      <div class="alert alert-info" role="alert" ng-hide="promotions && promotions.length > 0 " >
        There are no promotions yet.
      </div>
      <form class="form-horizontal" role="form" ng-submit="addPromotion(newPromotion)">
         
        <div class="form-group" ng-repeat="promotion in promotions">
          <div class="checkbox col-xs-9">
         
            <label>
              <input type="checkbox" ng-model="promotion.checked" ng-change="updatePromotion(promotion)"/> 
              Promotion {{promotion.description}} </label>&nbsp;&nbsp;
              
              <label>starting on {{promotion.promotionStartDate}}</label>&nbsp;&nbsp;
              
              <label>and ending on {{promotion.promotionEndDate}}
            </label>
           
          </div>
          <div class="col-xs-3">
            <button class="pull-right btn btn-danger" type="button" title="Delete"
              ng-click="deletePromotion(promotion)">
              <span class="glyphicon glyphicon-trash"></span>
            </button>
          </div>
        </div>
        <hr/>
        <div class="input-group">
          <input type="text" class="form-control" ng-model="description" placeholder="Enter the description..." />
          <input type="text" class="form-control" ng-model="startDate" placeholder="Enter the promotion start date..." />
          <input type="text" class="form-control" ng-model="endDate" placeholder="Enter the promotion end date..." />
          <span class="input-group-btn">
            <button class="btn btn-default" type="submit" ng-disabled="!newPromotion" title="Add" Value="Add">
              <span class="glyphicon glyphicon-plus"></span>
            </button>
          </span>
        </div>
      </form>
    </div>
    <script type="text/javascript" src="./libs/angular/angular.min.js"></script>
    <script type="text/javascript" src="./libs/angular-resource/angular-resource.min.js"></script>
    <script type="text/javascript" src="./libs/angular-spring-data-rest/dist/angular-spring-data-rest.min.js"></script>
    <script type="text/javascript" src="./libs/lodash/dist/lodash.min.js"></script>
    <script type="text/javascript" src="./app/app.js"></script>
    <script type="text/javascript" src="./app/controllers.js"></script>
    <script type="text/javascript" src="./app/services.js"></script>
  </body>
</html>