<?php 
    include "model/db_config.php";
    $db= new Database;
    $db->connect();

    // For test
    $tbl = "season_team";
    $data = $db->getAll($tbl);
?>

<table class="table table-hover" style="width: 100%;">
        <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>T_FFCCode</th>
                
            </tr>
        </thead>
        <tbody>
            <?php
            $i = 1;
            foreach($data as $value){
            ?>
            <tr>
                <td><?php echo $i++; ?></td>
                <td><?php echo $value['TeamName']; ?></td>
                <td><?php echo $value['T_FFCCode']; ?></td>
               
            </tr>
            <?php
            }
            ?>
            <tr>

            </tr>
        </tbody>
    </table>