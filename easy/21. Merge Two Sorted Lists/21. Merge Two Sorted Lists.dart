class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);

  int length = 0;
  bool isEmpty() {
    return length == 0;
  }

  void insertLast(int element) {
    if (next == null) {
      next = ListNode(element);
    } else {
      ListNode? current = next;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = ListNode(element);
    }
    length++;
  }
}

int main() {
  ListNode list1 = ListNode(1);
  list1.insertLast(2);
  list1.insertLast(4);

  ListNode list2 = ListNode(1);
  list2.insertLast(3);
  list2.insertLast(4);

  ListNode? list3 = mergeTwoLists(list1, list2);

  print("Merged LinkedList: ");
  while (list3!.next != null) {
    print(list3.val);
    list3 = list3.next;
  }

  // print(isEmpty);
//   else  {
//   while (list3!.isEmpty()) {
//     print(list3.val);
//     list3 = list3.next;
//   }
// }
  return 0;
}

ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
  // Create a dummy node to simplify handling the merged list.
  ListNode dummy = ListNode();
  ListNode current = dummy;

  while (list1 != null && list2 != null) {
    if (list1.val <= list2.val) {
      // Include equal elements as well
      current.next = list1;
      list1 = list1.next;
    } else {
      current.next = list2;
      list2 = list2.next;
    }
    current = current.next!;
  }

  // If one of the lists is not empty, append it to the merged list.
  if (list1 != null) {
    current.next = list1;
  } else if (list2 != null) {
    current.next = list2;
  }

  return dummy.next;
}
