#include<bits/stdc++.h>
using namespace std;
class Solution {
public:
    int partition1(vector<int> & nums,int l,int h)
{
    int p = nums[l];
    int i = l;
    int j = h;
    while (i<j)
    {
        do
        {
            i++;
        }while(nums[i] <= p);
        do
        {
            j--;
        }while (nums[j]>p);
        if(i<j)
            swap(nums[i],nums[j]);
    }
    swap(nums[l],nums[j]);
    return j;

}
    void quickSort(vector<int> & nums,int l, int h)
{
    if(l<h)
    {
        int piv = partition1(nums,l,h);
        quickSort(nums,l,piv);
        quickSort(nums,piv+1,h);

    }
}
    bool containsDuplicate(vector<int>& nums) {
        bool flag = false;
          int n = nums.size();

    quickSort(nums,0,n);
   for(int i=1;i<n;i++)
    {
        if(nums[i]==nums[i-1])
            flag = true;
    }


     return flag;
    }
};
    int main() {
        Solution obj = Solution();
        bool flag = false;
        vector<int> nums= {1,2,3,4,5};
        flag = obj.containsDuplicate(nums);
        if(flag)
            cout<<"true";
        else
            cout<<"false";

    }

