<?php
include 'includes/header.php';
 include 'func/filemanager.php';
 include 'func/postmanager.php';

if(isset($_POST['submit'])) {
  checkPost($_POST, $_FILES, $errors,$conn, 0);
}

?>

<div class="container">
  <div class="row">
<?php if ($_SESSION['loggedin'] == false): ?>
  <div class="container text-center">
    <h2>Please Login first!!!</h2>
    <h4>Then you can create a post =)))</h4>
    <hr>
    <button type="post" name="submit" class="btn btn-lg btn-dark mt-3"><a href="login.php">Login</a> </button>
  </div>
<?php else:?>

      <div class="col-md-6 mt-5">
        <form class="" action="create.php" method="post" enctype="multipart/form-data">
          <label for="title">Title</label>
          <input type="text" name="title" placeholder="Input your title..." class="form-control mb-3" value="">
          <label for="content">Content</label>
          <textarea name="content" class="form-control mb-3" placeholder="Input your content..." rows="8" cols="80"></textarea>
          <!-- <label for="comment">Comment</label>
          <input type="text" name="comment" placeholder="Input your comment..." class="form-control mb-3" value=""> -->
          <!-- <label for="author">Author</label>
          <input type="text" name="author" placeholder="Input your name..." class="form-control mb-3" value=""> -->
          <label for="img">Image Address</label>
          <input type="file" name="img" value="" class="mt-3 mb-3 form-control">
          <button type="submit" name="submit" style="margin-left: 33%;" class="btn btn-lg btn-dark mt-3"><i class="fas fa-pen mr-2"></i>Create</button>
        </form>
      </div>
      <div class="col-md-6 ">
        <img src="https://www.hostinger.vn/huong-dan/wp-content/uploads/sites/10/2019/02/blog-la-gi-1280x720.jpg" style="width: 130%;
    margin-top: 19%;" alt="">
      </div>
<?php endif; ?>
    </div>
  </div>
<?php include 'includes/footer.php'; ?>
