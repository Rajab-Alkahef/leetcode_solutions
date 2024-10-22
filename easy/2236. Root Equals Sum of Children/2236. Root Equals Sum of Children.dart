int main() {
  return 0;
}

//  * Definition for a binary tree node.
class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool checkTree(TreeNode? root) {
    // int x = root!.left! + root.right;
    if (root!.val == (root.left!.val + root.right!.val)) {
      return true;
    }
    return false;
  }
}
