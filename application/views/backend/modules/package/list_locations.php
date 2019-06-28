<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Location</h1>    
    </div>

<div class="accordion" id="accordionExample" style = "border-color:#f3f3f3;">

  <div class="card" style = "border-color:#f3f3f3;">
    <div class="card-header" id="headingOne">
      <button class="btn" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
         <h5 class="mb-0"> Luzon </h5>
        </button>
    
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body">
      <div class = "row">
    <div class = col-md-7>
    <form class="form-inline ">
        <input class="form-control mr-md-2" id="txt-search" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-3" type="submit">Search</button>  
    </form>
    </div>
    <div class = col-md-5>
    <a href = "<?= base_url()?>admin/location_create" class="btn btn-info my-3 pull-right" style = "color:white;"> <i class = "fa fa-plus"> </i> Add Location</a>
    </div>
    </div>
    <section>

    <?php 
        $noDataLuzon = true;
        if($luzon){
            if(sizeof($luzon) > 0){
              $noDataLuzon = false;
                  ?>
                  <div class="table-responsive">
                      <table class = "table table-striped table-sm"> 
                          <thead> 
                              <tr> 
                                  <th>Location Name</th>   
                                  <th>Region</th>   
                                  <th> # of tours created </th> 
                              </tr>
                          </thead>

                          <tbody>
                            <?php
                              foreach($luzon as $l){
                                $totalTour = 0;
                                $tours = $this->admin->fetch("tours", array("location_id" => $l->id));
                                if($tours){
                                  $totalTour = sizeof($tours);
                                }
                                ?>
                              <tr>
                                  <td class="text-capitalize"><?= $l->name ?></td>
                                  <td class="text-capitalize"><?= $l->region ?></td>
                                  <td><?= $totalTour ?></td> 
                              </tr>
                              <?php } ?>
                          <tbody>

                      </table>
                  
                  </div>
                  <?php
              ?>
              <?php
            } 
        }
        if($noDataLuzon){
          ?>
          <div class="alert alert-warning">
            No Data Available
          </div>
          <?php
        }
        
        ?>
        
        <nav aria-label="Page navigation example" id="pagination_link">

        </nav>
      </div>
    </div>
  </div>


  <div class="card" style = "border-color:#f3f3f3;">
    <div class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        <h5 class="mb-0"> Visayas </h5> 
        </button>
      </h5>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
      <div class="card-body">
      <div class = "row">
    <div class = col-md-7>
    <form class="form-inline ">
        <input class="form-control mr-md-2" id="txt-search" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-3" type="submit">Search</button>  
    </form>
    </div>
    <div class = col-md-5>
    <a href = "<?= base_url()?>admin/location_create" class="btn btn-warning my-3 pull-right" style = "color:white;"> <i class = "fa fa-plus"> </i> Add Location</a>
    </div>
    </div>
    
    <section>

    <?php 
        $noDataLuzon = true;
        if($visayas){
            if(sizeof($visayas) > 0){
              $noDataLuzon = false;
                  ?>
                  <div class="table-responsive">
                      <table class = "table table-striped table-sm"> 
                          <thead> 
                              <tr> 
                                  <th>Location Name</th>   
                                  <th>Region</th>   
                                  <th> # of tours created </th> 
                              </tr>
                          </thead>

                          <tbody>
                            <?php
                              foreach($visayas as $l){
                                $totalTour = 0;
                                $tours = $this->admin->fetch("tours", array("location_id" => $l->id));
                                if($tours){
                                  $totalTour = sizeof($tours);
                                }
                                ?>
                              <tr>
                                  <td class="text-capitalize"><?= $l->name ?></td>
                                  <td class="text-capitalize"><?= $l->region ?></td>
                                  <td><?= $totalTour ?></td> 
                              </tr>
                              <?php } ?>
                          <tbody>

                      </table>
                  
                  </div>
                  <?php
              ?>
              <?php
            } 
        }
        if($noDataLuzon){
          ?>
          <div class="alert alert-warning">
            No Data Available
          </div>
          <?php
        }
        
        ?>
        
        <nav aria-label="Page navigation example" id="pagination_link">

        </nav>
</section>
      </div>
    </div>
  </div>
      

  
  <div class="card" style = "border-color:#f3f3f3;">
    <div class="card-header" id="headingThree">
      <h5 class="mb-0">
        <button class="btn  collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
        <h5 class="mb-0"> Mindanao </h5>  
        </button>
      </h5>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
      <div class="card-body">
      <div class = "row">
    <div class = col-md-7>
    <form class="form-inline ">
        <input class="form-control mr-md-2" id="txt-search" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-3" type="submit">Search</button>  
    </form>
    </div>
    <div class = col-md-5>
    <a href = "<?= base_url()?>admin/location_create" class="btn btn-success my-3 pull-right" style = "color:white;"> <i class = "fa fa-plus"> </i> Add Location</a>
    </div>
    </div>
    
    <section>

    <?php 
        $noDataLuzon = true;
        if($mindanao){
            if(sizeof($mindanao) > 0){
              $noDataLuzon = false;
                  ?>
                  <div class="table-responsive">
                      <table class = "table table-striped table-sm"> 
                          <thead> 
                              <tr> 
                                  <th>Location Name</th>   
                                  <th>Region</th>   
                                  <th> # of tours created </th> 
                              </tr>
                          </thead>

                          <tbody>
                            <?php
                              foreach($mindanao as $l){
                                $totalTour = 0;
                                $tours = $this->admin->fetch("tours", array("location_id" => $l->id));
                                if($tours){
                                  $totalTour = sizeof($tours);
                                }
                                ?>
                              <tr>
                                  <td class="text-capitalize"><?= $l->name ?></td>
                                  <td class="text-capitalize"><?= $l->region ?></td>
                                  <td><?= $totalTour ?></td> 
                              </tr>
                              <?php } ?>
                          <tbody>

                      </table>
                  
                  </div>
                  <?php 
              ?>
              <?php
            } 
        }
        if($noDataLuzon){
          ?>
          <div class="alert alert-warning">
            No Data Available
          </div>
          <?php
        }
        
        ?>
        
        <nav aria-label="Page navigation example" id="pagination_link">

        </nav>
</section>
      </div>
    </div>
  </div>
</div>

   

        

    