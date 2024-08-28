class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
    if(head == null) {
      return null;
    }
    
    if(head.next == null) {
      return head;
    }
    
    ListNode? curent = head;
    ListNode? next = head.next;
    
    while (next != null) {
      if(curent?.val == next.val) {
        next = next.next;
        curent?.next = next;  
      } else {
        curent = next;
        next = curent.next;
        
      }
      
    }
    
    return head;
  }
}
