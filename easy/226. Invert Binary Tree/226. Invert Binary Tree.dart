int main() {
  TreeNode root = TreeNode();
  root.val = 1;
  root.left = new TreeNode(2);
  root.right = new TreeNode(7);
  root.left = new TreeNode(1);
  root.right = new TreeNode(3);
  root.left = new TreeNode(6);
  root.right = new TreeNode(9);
  print(root.val);
  print(Solution().invertTree(root));
  return 0;
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  TreeNode? invertTree(TreeNode? root) {
    if (root == null) return null;
    TreeNode? temp = root.left;
    root.left = root.right;
    root.right = temp;
    invertTree(root.left);
    invertTree(root.right);
    return root;
  }
}
