<?php
// function to create dynamic treeview menus
function createTreeView($parent, $menu) {
   $html = "";
   if (isset($menu['parents'][$parent])) {
      $html .= "
      <ol class='tree'>";
       foreach ($menu['parents'][$parent] as $itemId) {
          if(!isset($menu['parents'][$itemId])) {
             $html .= "<li><label for='subfolder2'><a href='".$menu['items'][$itemId]['link']."'>".$menu['items'][$itemId]['label']."</a></label> <input type='checkbox' name='subfolder2'/></li>";
          }
          if(isset($menu['parents'][$itemId])) {
             $html .= "
             <li><label for='subfolder2'><a href='".$menu['items'][$itemId]['link']."'>".$menu['items'][$itemId]['label']."</a></label> <input type='checkbox' name='subfolder2'/>";
             $html .= createTreeView($itemId, $menu);
             $html .= "</li>";
          }
       }
       $html .= "</ol>";
   }
   return $html;
}

function doCreateNode($id, $label, $link, $parent, $sort) 
{
	if ($parent=="treeview.root") $parent="root";
	mysqli_query($conn, "INSERT INTO menus VALUES ('$id', '$label', '$link', '$parent',false, '$sort')");
	return 1;
}

?>

<!DOCTYPE html>
<html>
	<head>
		<body>
		<form action="index.php" method="post">
			<input type="submit" name="insert" value="Add" onClick="doCreateNode()">
			<input type="submit" name="delete" value="Delete">
		</form>
		</body>
	</head>
</html>