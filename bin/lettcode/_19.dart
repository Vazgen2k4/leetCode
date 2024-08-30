void main(List<String> args) {
  var l = [1,2];
  
  var head = ListNode.fromArray(l);
  
  ListNode.printAll(head);
  print('-'*20);
  var head2= Solution().removeNthFromEnd(head, 2);
  ListNode.printAll(head2);
  
  
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);

  factory ListNode.fromArray(List<int> sourse) {
    ListNode head = ListNode(sourse[0]);
    ListNode? node = head;

    for (var i = 1; i < sourse.length; i++) {
      node?.next = ListNode(sourse[i]);
      node = node?.next;
    }

    return head;
  }

  static void printAll(ListNode? head) {
    var current = head;
    while (current != null) {
      print(current);
      current = current.next;
    }
  }

  @override
  String toString() {
    return ' This: $hashCode\n Value: $val\n Next: ${next.hashCode}\n';
  }
}

class Solution {
  ListNode? removeNthFromEnd(ListNode? head, int n) {
    if (head == null || head.next == null) return null;

    ListNode tail = head;
    int size = 1;

    while (tail.next != null) {
      tail = tail.next!;
      size++;
    }

    final index = size - n;

    if (index == 0) {
      return head.next;
    }

    tail = head;

    for (var i = 0; i < index; i++) {
      tail = tail.next!;
    }

    tail.next = tail.next!.next;

    return head;
  }
}
