//First Approach
class Solution {
  int searchInsert(List<int> nums, int target) {
      if(nums[0] > target)
      return 0;
      else if(nums[nums.length-1] < target)
      return nums.length;
      else{
      int first = 0;
      int last = nums.length - 1;
      while(first <= last){
          int mid = (first + last)~/2;
          if(nums[mid] == target){
              return mid;
          }
          else if(nums[mid] < target){
            if(nums[mid+1] == target)
            return mid+1;
            else if(nums[mid+1] > target)
            return mid+1;
            else
            first = mid+1;
          }
          else{
              if(nums[mid-1] == target )
            return mid-1;
            else if(nums[mid-1] < target)
            return mid;
            else
            last = mid-1;
          }
      }
      return 0;
  }
}
}

//Another Approach

class Solution {
     int searchInsert(List<int> nums, int target) {
        int left = 0;
        int right = nums.length - 1;
        while(left <= right)
        {
            int mid = (left + right) ~/ 2;
            if(nums[mid] == target)
            return mid;
            else if(nums[mid] < target)
            left = mid+1;
            else
            right = mid-1;
        }
        return left;
    }
}

