<?php include ("topbit.php") ?>
            
<nav>
        
        <label for= "navCheck"><i class="fas fa-bars"></i></label>
        <input type="checkbox" id="navCheck">
            
        <div id="menuItems">
            <p><a class="active" href="index.php">Home</a></p>
            <p><a href="music.php">Music</a></p>
        </div>

    </nav>


    <div class="content">

        <?php
            require_once 'connect.php';

            $sql = "SELECT * FROM mcdonalds_details, categories WHERE mcdonalds_details.CategoryID = categories.CategoryID";

            $result = $conn->query($sql);

            echo '<h1 class="musicHeading">Item List</h1>';

            echo '<section id="musicList">';
                
                if ($result->num_rows > 0){
                        
                        while($row = $result->fetch_assoc()){
                            echo '<article>';

                                echo '<h2>' . $row["Title"] . '</h2>';
                                echo '<figure><img src="' . $row["Image"] . '" height="150" width="150"></figure>';
                                echo '<p><span id="title">Artist: </span><span>' . $row["Artist_Name"] . '</span></p>';
                                echo '<p><span id="title">Genre: </span><span>' . $row["Genre"] . '</span></p>';
                            echo '</article>';
                                
                        }
                }
                else {
                    echo '<p>ERROR: Sorry! There are no results.</p>';
                }

            echo '</section>';
        ?>

    </div>

    <footer>
        <p class="centre">© 2019 LearnCoach.</p>
    </footer>

</body>

</html>