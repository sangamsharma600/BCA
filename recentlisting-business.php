<?php include("inc/header.php"); ?>

<body>
    <!-- navbar section -->
    <?php include("inc/navbar.php"); ?>
    <!-- navbar section -->

    <section class="blogs p-5" style="background-image: url('assets/uploads/3.jpg')">
        <div class="">
            <nav style="--bs-breadcrumb-divider: '>'" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item text-white">
                        <a href="index.php">Home</a>
                    </li>
                    <li class="breadcrumb-item text-white active" aria-current="page">
                        Recent Listing Business
                    </li>
                </ol>
            </nav>
        </div>
    </section>


    <!-- recent listing Business -->
    <section class="pt-5 category-business-site">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-10 col-xl-8 text-center">
                    <h3 class="mb-4 category-title">Recent Listing Business</h3>
                </div>
            </div>
            <div class="row text-center pt-3 pb-5">
                <div class="col-md-4 shadow-sm p-3 mb-5 bg-body rounded">
                    <div class="lists">
                        <h3 class="pb-2 shadow">Recent Listing Business</h3>
                        <?php
                           $category="SELECT *from businesslists order by created_at DESC limit 3 ";
                           $c_result= mysqli_query($conn, $category);
                           while($business_category=mysqli_fetch_array( $c_result)){
                            ?>
                              <div class="recent-listing-items p-2">
                            <a href="business-site/index.php" class="text-decoration-none">
                                <h5 class="mb-3"><?php echo $business_category['business_name']  ?></h5>
                            </a>
                            <span class="text-primary mb-3"><?php echo $business_category['business_category']  ?></span>
                            <span>Date:<?php $time = $business_category['created_at']; echo $time = date("d-m-Y", strtotime($time)); ?></span>
                        </div>
                            <?php 
                           }
                            ?>
                    </div>
                    <div class="lists pt-5">
                        <h3 class="pb-2 shadow">Popular Business</h3>
                        <?php
                           $category="SELECT * from businesslists order by created_at DESC limit 3 ";
                           $c_result= mysqli_query($conn, $category);
                           while($business_category=mysqli_fetch_array( $c_result)){
                            ?>
                              <div class="recent-listing-items p-2">
                            <a href="business-site/index.php" class="text-decoration-none">
                                <h5 class="mb-3"><?php echo $business_category['business_name']  ?></h5>
                            </a>
                            <span class="text-primary mb-3"><?php echo $business_category['business_category']  ?></span>
                            <span>Date:<?php $time = $business_category['created_at']; echo $time = date("d-m-Y", strtotime($time)); ?></span>
                        </div>
                            <?php 
                           }
                            ?>
                    </div>
                    <div class="lists pt-5">
                        <h3 class="pb-2 shadow">Feature Business</h3>
                        <?php
                           $category="SELECT * from businesslists order by created_at DESC limit 3 ";
                           $c_result= mysqli_query($conn, $category);
                           while($business_category=mysqli_fetch_array( $c_result)){
                            ?>
                              <div class="recent-listing-items p-2">
                            <a href="business-site/index.php" class="text-decoration-none">
                                <h5 class="mb-3"><?php echo $business_category['business_name']  ?></h5>
                            </a>
                            <span class="text-primary mb-3"><?php echo $business_category['business_category']  ?></span>
                            <span>Date:<?php $time = $business_category['created_at']; echo $time = date("d-m-Y", strtotime($time)); ?></span>
                        </div>
                            <?php 
                           }
                            ?>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="row">
                        <div class="slider pb-3">
                            <div class="search col-md-12 xm-auto p-2">
                                <form class="row g-3 search-form">
                                    <div class="col-md-10 p-0">
                                        <!-- <label for="inputProvience" class="form-label text-white fs-2">Choose Proviece</label> -->
                                        <input class=" business-name form-control" id="" type="text"
                                            placeholder="Search business as Category" aria-label="">
                                    </div>
                                    <div class="col-md-2 p-0 4">
                                        <button type="button" class="btn btn-warning form-control  search-button">
                                            <i class="fas fa-search p-1 border-start-0"></i>
                                        </button>

                                    </div>
                                </form>
                            </div>
                        </div>

                            <!-- pagination -->
                            <?php
                        $limit = 16;  // Number of entries to show in a page. Look for a GET variable page if not found default is 1.     
                        if (isset($_GET["page"])) { 
                        $pn  = $_GET["page"]; 
                        } 
                        else { 
                        $pn=1; 
                        };  
                    
                        $start_from = ($pn-1) * $limit;  
                    
                        $sql = "SELECT * FROM businesslists ORDER BY created_at DESC LIMIT $start_from, $limit";  
                        $rs_result = mysqli_query($conn, $sql); 
                        ?>
                        <!-- pagination -->

                        <?php
                          while($business_category=mysqli_fetch_array( $rs_result)){
                           ?>

                        <div class="col-sm-6 col-md-4 col-lg-3 mb-5 mb-md-0 recent-listing-itens">
                            <div class="d-flex justify-content-center mb-4">
                                <img src="<?php echo "uploads/" . $business_category['logo']; ?>" class=" shadow-1-strong" width="150" height="50" />
                            </div>
                            <a href="business-site/index.php" class="text-decoration-none">
                                <h5 class="mb-3"><?php echo $business_category['business_name']; ?></h5>
                            </a>
                            <h6 class="text-primary mb-3"><?php echo $business_category['business_category']; ?></h6>
                            <a href="#"><i title="Phone" class="fas fa-phone fa-lg text-primary"></i></a>
                            <a href="#"><i title="Location" class="fas fa-location fa-lg text-primary"></i></a>
                            <a href="#"><i title="Email" class="fas fa-inbox fa-lg text-primary"></i></a>
                        </div>
                        <?php
                        }
                        ?>
                              <!-- pagination -->
                <div class="pagination-section mt-3">
                    <ul class="pagination">
                        <?php  
                            $sql = "SELECT COUNT(*) FROM businesslists";  
                            $rs_result = mysqli_query($conn, $sql);  
                            $row = mysqli_fetch_row($rs_result);  
                            $total_records = $row[0];  
                                
                            // Number of pages required.
                            $total_pages = ceil($total_records / $limit);  
                            $pagLink = "";                        
                            for ($i=1; $i<=$total_pages; $i++) {
                                if ($i==$pn) {
                                    $pagLink .= "<li class='active'><a href='recentlisting-business.php?page="
                                                                    .$i."' style='padding:15px; font-size:25px;'>".$i."</a></li>";
                                }            
                                else  {
                                    $pagLink .= "<li><a href='recentlisting-business.php?page=".$i."'style='padding:15px; font-size:25px;'>
                                                                    ".$i."</a></li>";  
                                }
                            };  
                            echo $pagLink;  
                            ?>
                    </ul>
                </div>
                <!-- pagination -->
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- recent listing Business -->

    <?php include("inc/footer.php"); ?>