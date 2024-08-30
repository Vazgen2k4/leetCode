void main(List<String> args) {
  
}


class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
  
  @override
  String toString() {
    return ' This: $hashCode\n Value: $val\n Left: ${left.hashCode}\n Right: ${right.hashCode}\n';
  }
  
}

class Solution {
  List<int> inorderTraversal(TreeNode? root) {
    if (root == null) {
      return [];
    }

    if(root.left == null && root.right == null) {
      return [root.val];
    }
    
    final leftList = inorderTraversal(root.left);
    final rightList = inorderTraversal(root.right);
    
    return [...leftList, root.val ,...rightList];
  }
}
