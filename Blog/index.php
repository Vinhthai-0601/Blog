<?php include 'includes/header.php';
include 'func/filemanager.php';
include 'func/postmanager.php';
include 'classes/post.php';

$sql = "SELECT * FROM posts";
$results = $conn->query($sql);
$rows = $results->fetch_all(MYSQLI_ASSOC);
 ?>
<style media="screen">
.jumbotron.jumbotron-fluid {
    margin-bottom: 0px;
    background: url(https://media.istockphoto.com/vectors/vector-broken-glass-black-background-dark-abstract-bg-for-night-party-vector-id1253135360?k=6&m=1253135360&s=170667a&w=0&h=xKAX29ZZgTmgtdqB16G5tH-m11mrPTQWcafmZP3ZxfM=);
}

h3 {
    color: white;
}
a.dark {
    color: black !important;
}

a.dark:hover {
    color: white !important;
}
a.title{
  color: black;
}

a.title:hover{
  color: black;
  text-decoration: none;
  font-size: 50px;
  transition: font-size 300ms;
}
.container.post {
    background: url(https://i.pinimg.com/564x/6f/78/68/6f78682887d092fa499108a0aaa4e028.jpg);
}

hr{
  border-top: 3px dashed #8c8b8b;
}

</style>
    <div class="jumbotron jumbotron-fluid mb-2">
      <div class="container front">
        <form class="" action="search.php" method="post">
          <h3>Welcome to my Blog</h3>
          <!-- <input type="text" name="search" placeholder="Enter the title...." class="form-control" value="">
          <button type="submit" name="submit" class="btn btn-outline-light btn-lg mt-3"><i class="fa fa-search mr-2"></i>Search</button> -->
        </form>
      </div>
    </div>

    <div class="container post">
      <h2 class="display-4">Posts</h2>
      <hr>
      <div class="row">
        <?php
        $posts = getPosts(12, $conn);
         echo outputPosts($posts);
         ?>
         <!-- <a href="index.php?delete=<?php if(isset($_GET['id'])) { echo $post->id; } ?>"><button type="button" class="btn btn-danger">Delete Post</button></a> -->

      </div>
    </div>
<?php include 'includes/footer.php'; ?>
