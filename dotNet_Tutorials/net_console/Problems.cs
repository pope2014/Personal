class Methods {

    public void Main() {
        int[] nums1 = {1,2,3,0,0,0};
        int[] nums2 = {};
    }

    public static void Prob1(int[] nums1, int m, int[] nums2, int n) {
        int x=0;
        int y=0;
        int z=0;

        while (x + y < nums1.Length) {
            if (x < m && y < n) {
                if ( x < m && nums1[x+y] <= nums2[y] ) {
                    x += 1;
                } else {
                    for (z = nums1.Length - 1; z > x+y ; z--) {
                        nums1[z] = nums1[z - 1];
                    }
                    nums1[x+y] = nums2[y];
                    y+=1;
                }
            } else if (y<n) {
                nums1[x+y] = nums2[y];
                y+=1;
            }
        }
    }

}