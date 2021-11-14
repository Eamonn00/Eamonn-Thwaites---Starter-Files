<?php include ("topbit.php") ?>
            
<nav>
        
        <label for= "navCheck"><i class="fas fa-bars"></i></label>
        <input type="checkbox" id="navCheck">
            
        <div id="menuItems">
            <p><a class="active" href="index.php">Home</a></p>
            <p><a href="mcdonalds.php">McDonalds</a></p>
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

                            echo '<h2>' . $row["Item"] . '</h2>';
                            echo '<p><span id="title">Category: </span><span>' . $row["Category"] . '</span></p>';
                            echo '<p><span id="title">Serving Size: </span><span>' . $row["Serving Size"] . '</span></p>';
                            echo '<p><span id="title">Calories: </span><span>' . $row["Calories"] . '</span></p>';
                            echo '<p><span id="title">Total Fat: </span><span>' . $row["Total Fat"] . '</span></p>';
                            echo '<p><span id="title">Total Fat (% Daily Value): </span><span>' . $row["Total Fat (% Daily Value)"] . '</span></p>';
                            echo '<p><span id="title">Saturated Fat: </span><span>' . $row["Saturated Fat"] . '</span></p>';
                            echo '<p><span id="title">Saturated Fat (% Daily Value): </span><span>' . $row["Saturated Fat (% Daily Value)"] . '</span></p>';
                            echo '<p><span id="title">Cholesterol: </span><span>' . $row["Cholesterol"] . '</span></p>';
                            echo '<p><span id="title">Cholesterol (% Daily Value): </span><span>' . $row["Cholesterol (% Daily Value)"] . '</span></p>';
                            echo '<p><span id="title">Carbohydrates: </span><span>' . $row["Carbohydrates"] . '</span></p>';
                            echo '<p><span id="title">Carbohydrates (% Daily Value): </span><span>' . $row["Carbohydrates (% Daily Value)"] . '</span></p>';
                            echo '<p><span id="title">Dietary Fiber: </span><span>' . $row["Dietary Fiber"] . '</span></p>';
                            echo '<p><span id="title">Dietary Fiber (% Daily Value): </span><span>' . $row["Dietary Fiber (% Daily Value)"] . '</span></p>';
                            echo '<p><span id="title">Sugars: </span><span>' . $row["Sugars"] . '</span></p>';
                            echo '<p><span id="title">Protein: </span><span>' . $row["Protein"] . '</span></p>';

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