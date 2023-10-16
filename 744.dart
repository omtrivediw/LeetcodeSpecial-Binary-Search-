class Solution {
  String nextGreatestLetter(List<String> letters, String target) {
      int first = 0;
      int last = letters.length-1;
      int code = target.codeUnitAt(0);
      int temp = 200;
      String res = "";
      while(first<=last){
          int mid = (first + last) ~/ 2;
          int incode = letters[mid].codeUnitAt(0);
          if(incode > code){
              temp = min(temp,incode);
              res = String.fromCharCode(temp);
              last = mid-1;
          }
          else{
              first = mid+1;
          }
      }
    if(res.isEmpty)
    {
        return letters[0];
    }
    else
    return res;
  }
}
