<?php
    class Database{
        private $host = "localhost";
        private $user ="root";
        private $pass="";
        private $dbname = "dbs";
        private $conn = NULL;
        private $result = NULL;
        
        public function connect(){
            $this->conn = new mysqli($this->host, $this->user, $this->pass, $this->dbname);
            if (!$this->conn){
                echo "Can not connect to database.";
                exit();
            }
            else{
                mysqli_set_charset($this->conn, 'utf8');
                echo "Connect succecced!";
            }
            return $this->conn;
        }

        public function execute($sql){  // execute some mySQL requests
            $this->result = $this->conn->query($sql);
            if (!$this->result) {
                echo "Query execution failed: " . $this->conn->error;
            }
            return $this->result;
        }

        public function getData(){
            if($this->result){
                $data = mysqli_fetch_array($this->result);
            }
            else{
                $data= 0;
            }
            return $data;
        }

        public function getAll($tbl){
            $sql =  "SELECT * FROM $tbl";
            $this->execute($sql);
            if($this->num_rows()==0){
                $data=0;
            }
            else{
                while($datas = $this->getData()){
                    $data[] = $datas;
                }
            }
            return $data;
        }
        public function getDataAt($table, $id){
            $sql = "SELECT * FROM $table WHERE id = '$id' ";
            $this->execute($sql);
            if($this->result){
                $data = mysqli_fetch_array($this->result);
            }
            else{
                $data= 0;
            }
            return $data;
        }

        public function num_rows(){
            if($this->result){
                $num = mysqli_num_rows($this->result);
            }
            else{
                $num = 0;
            }
            return $num;
        }

        

    }
    
    
        
    
?>
    
    
    
    
    
    
    
    
    
    
