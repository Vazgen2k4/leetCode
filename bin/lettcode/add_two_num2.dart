void main() {
  ListNode? l1 = create([1, 2, 4]);
  ListNode? l2 = create([1, 3, 4]);

  printNode(Solution().mergeTwoLists(l1, l2));
}

ListNode? create(List<int> arr) {
  if (arr.isEmpty) {
    return null;
  }

  return ListNode(arr.first, create(arr.sublist(1)));
}

void printNode(ListNode? list) {
  if (list == null) {
    return;
  }

  String res = '[';
  while (list != null) {
    res += ' ${list.val}';

    list = list.next;
    if (list != null) {
      res += ',';
    }
  }

  res += ' ]';
  print(res);
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  // ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
  //   if (l1 == null && l2 == null && ost == 0) {
  //     return null;
  //   }

  //   int value = (l1?.val ?? 0) + (l2?.val ?? 0) + ost;
  //   ost = value  ~/ 10;

  //   return ListNode(value % 10, addTwoNumbers(l1?.next, l2?.next));
  // }
  // ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
  //   if (l1 == null && l2 == null) {
  //     return null;
  //   }

  //   if(l1 == null) {
  //     return l2;
  //   }

  //   if(l2 == null) {
  //     return l1;
  //   }

  //   int ost = 0;
  //   ListNode root = ListNode();
  //   ListNode current = root;
  //   int value = 0;

  //   while (l1 != null || l2 != null || ost != 0) {
  //     value = (l1?.val ?? 0) + (l2?.val ?? 0) + ost;
  //     ost = value ~/ 10;

  //     current.next = ListNode(value % 10);
  //     current = current.next!;

  //     l1 = l1?.next;
  //     l2 = l2?.next;
  //   }

  //   return root.next;
  // }

  ListNode? mergeTwoLists(ListNode? l1, ListNode? l2) {
    ListNode root = ListNode();
    ListNode current = root;
    int value = 0;

    while (l1 != null || l2 != null) {
      if (l1?.val == null) {
        value = l2?.val ?? 0;
        current.next = ListNode(value);
        current = current.next!;
        l2 = l2?.next;
      } else if (l2?.val == null) {
        value = l1?.val ?? 0;
        current.next = ListNode(value);
        current = current.next!;
        l1 = l1?.next;
      } else {
        if (l1!.val < l2!.val) {
          value = l1.val;
          l1 = l1.next;
        } else {
          value = l2.val;
          l2 = l2.next;
        }

        current.next = ListNode(value);
        current = current.next!;
      }
    }

    return root.next;
  }
}
