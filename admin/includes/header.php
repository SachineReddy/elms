
<div class="mn-content fixed-sidebar">
    <header class="mn-header navbar-fixed">
        <nav class="navbar navbar-expand-lg navbar-light py-3" style="background-color: #31708E;">
                <div class="nav-wrapper row" style="">
                <div class="collapse navbar-collapse d-flex justify-content-center align-items-center" id="navbarNavAltMarkup" style="text-align: center;">
             <span style="font-size:38px;font-weight:bold;color:#f7f9fb;font-family:'calibri', cursive;">Employee Leave Management System</span>
                    <div class="navbar-nav d-flex justify-content-center align-items-center">
          
  
          </div>
          </div>
                      
                        <ul class="right col s9 m3 nav-right-menu">
                        
                            <li class="hide-on-med-and-up"><a href="javascript:void(0)" class="search-toggle"><i class="material-icons">search</i></a></li>
                        </ul>
                        
                        <ul id="dropdown1" class="dropdown-content notifications-dropdown">
                            <li class="notificatoins-dropdown-container">
                                <ul>
                                    <li class="notification-drop-title">Notifications</li>
<?php 
$isread=0;
$sql = "SELECT leaves_table.id as lid,employees_table.FirstName,employees_table.LastName,employees_table.EmpId,leaves_table.PostingDate from leaves_table join employees_table on leaves_table.empid=employees_table.id where leaves_table.IsRead=:isread";
$query = $dbh -> prepare($sql);
$query->bindParam(':isread',$isread,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
if($query->rowCount() > 0)
{
foreach($results as $result)
{               ?>  


                                    <li>
                                        <a href="leave-details.php?leaveid=<?php echo htmlentities($result->lid);?>">
                                        <div class="notification">
                                            <div class="notification-icon circle cyan"><i class="material-icons">done</i></div>
                                            <div class="notification-text"><p><b><?php echo htmlentities($result->FirstName." ".$result->LastName);?><br />(<?php echo htmlentities($result->EmpId);?>)</b> applied for leave</p><span>at <?php echo htmlentities($result->PostingDate);?></b></span></div>
                                        </div>
                                        </a>
                                    </li>
                                   <?php }} ?>
                                   
                                  
                        </ul>
                    </div>
                </nav>
            </header>
          
