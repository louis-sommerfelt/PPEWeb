
    <?php include 'templates/header.php'; ?>
   

    <div class="container">
        <div class="jumbotron">
            <h1 class="display-4">Ma bibliothèque</h1>
           
        </div>
        <h1></h1>
        <div class="row">
        <div class="col-12 col-md-8">
                <a href="index.php?order=titre_l" class="btn btn-primary">Trier par nom</a>&nbsp;
                <a href="index.php?order=nom_a" class="btn btn-info">Trier par auteur</a>&nbsp;
                <!-- TODO #2 n'afficher ce bouton que s'il y a un tri -->

                <?php if (isset($_GET['order'])) :?>

                <a href="index.php" class="btn btn-dark">Annuler le tri</a><br> 

                <?php endif;?>   

                <br>
                <table class="table table-striped">
                <thead>
                    <tr>
                      
                        <th scope="col">Titre</th>
                        <th scope="col">Isbn</th>
                        <th scope="col">Nombre de pages</th>
                        <th scope="col">Edition</th>
                        <th scope="col">Langue</th>
                        <th scope="col">Nom d'auteur</th>
                        <th scope="col">Exemplaire</th>
                        <th scope="col">Catégorie</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- TODO #1 boucler sur le tableau $bookList contenant tous les livres
                    (supprimez ces 2 lignes d'exemple) -->
                    <?php foreach ($livreList as $livre) :?>
                    <tr>
                       
                        <td><?= $livre['titre_l'];?></td>
                        <td><?= $livre['isbn_l'];?></td>
                        <td><?= $livre['nombre_pages_l'];?></td>
                        <td><?= $livre['edition_l'];?></td>
                        <td><?= $livre['langue_l'];?></td>
                        <td><?= $livre['nom_a'];?></td>
                        <td><?= $livre['id_exemplaire'];?></td>
                        <td><?= $livre['id_categorie'];?></td>
                        <td><?= $genreList[$livre['id_categorie']];?></td>
                    </tr>
                    <?php endforeach;?>
                </tbody>
                </table>
            </div>
            <div class="col-12 col-md-4">
                <div class="card">
                    <div class="card-header">Ajout</div>
                    <div class="card-body">
                        <form action="" method="post">
                            <div class="form-group">
                                <label for="titre_l">Titre</label>
                                <input type="text" class="form-control" name="titre_l" id="titre_l" placeholder="">
                            </div>
                            <div class="form-group">
                                <label for="isbn_l">N° d'identification</label>
                                <input type="text" class="form-control" name="isbn_l" id="isbn_l" placeholder="">
                            </div>
                            <div class="form-group">
                                <label for="release_date">Nombre de pages</label>
                                <input type="text" class="form-control" name="nombre_pages_l" id="nombre_pages_l" placeholder="">
                            </div>
                            <div class="form-group">
                                <label for="author">Edition</label>
                                <input type="text" class="form-control" name="edition_l" id="edition_l" placeholder="">
                            </div>
                            <div class="form-group">
                                <label for="langue_l">Langue</label>
                                <select class="custoGenre" id="langue_l" name="langue_l">
                                    <option>-<?php foreach ($genreList as $currentGenreId=>$currentGenreName) : ?>
                                    <option value="<?= $currentGenreId ?>"><?= $currentGenreName ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="nom_a">Auteur</label>
                                <input type="text" class="form-control" name="nom_a" id="nom_a" placeholder="">
                            </div>
                            <div class="form-group">
                                <label for="exemplaire_id">Genre</label>
                                <select class="custoGenre" id="genre" name="genre">
                                    <option>-<?php foreach ($genreList as $currentGenreId=>$currentGenreName) : ?>
                                    <option value="<?= $currentGenreId ?>"><?= $currentGenreName ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="genre">Exemplaire</label>
                                <select class="custoGenre" id="id_exemplaire" name="id_exemplaire">
                                    <option>-<?php foreach ($genreList as $currentGenreId=>$currentGenreName) : ?>
                                    <option value="<?= $currentGenreId ?>"><?= $currentGenreName ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            
                            <button type="submit" class="btn btn-success btn-block">Ajouter</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
  

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 

 <?php include 'templates/footer.php'; ?>
</main>
 
      



