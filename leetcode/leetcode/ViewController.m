//
//  ViewController.m
//  leetcode
//
//  Created by 宝付 on 2023/3/9.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*
     NSArray *strs1 = @[@"flower",@"flow",@"flight"];
     NSArray *strs2 = @[@"dog",@"racecar",@"car"];
     NSString *res1 = [self longestCommonPrefix:strs1];
     NSString *res2 = [self longestCommonPrefix:strs2];
     
     NSLog(@"res1=%@",res1);
     NSLog(@"res2=%@",res2);
     */
    
    /*
     NSString *str1 = @"Hello World";
     NSString *str2 = @"   fly me   to   the moon  ";
     NSString *str3 = @"luffy is still joyboy";
     int res1 = [self lengthOfLastWordWithString:str1];
     int res2 = [self lengthOfLastWordWithString:str2];
     int res3 = [self lengthOfLastWordWithString:str3];
     NSLog(@"res1==%d",res1);
     NSLog(@"res2==%d",res2);
     NSLog(@"res3==%d",res3);
     */
    
    /*
     NSArray *nums1 = @[@(2),@(7),@(11),@(15)];
     int target1 = 9;
     
     NSArray *nums2 = @[@(3),@(2),@(4)];
     int target2 = 6;
     
     NSArray *nums3 = @[@(3),@(3)];
     int target3 = 6;
     
     NSArray *res1 = [self twoSumWithArray:nums1 Target:target1];
     NSArray *res2 = [self twoSumWithArray:nums2 Target:target2];
     NSArray *res3 = [self twoSumWithArray:nums3 Target:target3];
     NSLog(@"res1==%@",res1);
     NSLog(@"res2==%@",res2);
     NSLog(@"res3==%@",res3);
     */
    
    /*
     NSArray *h_array = @[@(1),@(8),@(6),@(2),@(5),@(4),@(8),@(3),@(7)];
     int res = [self maxAreaWithHeightArray:h_array];
     NSLog(@"res==%d",res);
     */
    
    /*
     int res = [self climbStairsWithNum:10];
     NSLog(@"res==%d",res);
     */
    
    
    /*
     NSArray *arr1 = @[@(1),@(1),@(2)];
     NSArray *arr2 = @[@(1),@(1),@(2),@(2),@(2),@(6),@(7),@(7)];
     NSArray *res1 = [self removeDuplicates:arr1];
     NSArray *res2 = [self removeDuplicates:arr2];
     NSLog(@"res1==%@",res1);
     NSLog(@"res2==%@",res2);
     */
    
    /*
     NSArray *nums1 = @[@1,@2,@3,@0,@0,@0];
     int m = 3;
     NSArray *nums2 = @[@2,@5,@6];
     int n = 3;
     NSArray *res = [self mergeWithNums1:nums1 M:m Nums2:nums2 N:n];
     NSLog(@"res=%@",res);
     */
    
    
    /*
     NSArray *arr = @[@7, @1, @5, @3, @6, @4];
     NSInteger res = [self maxProfitWithArray:arr];
     NSLog(@"res=%ld",(long)res);
     */
    
    /*
     NSArray *array = @[@1,@3,@5,@6];
     NSInteger res1 = [self searchInsertWithArray:array Target:5];
     NSInteger res2 = [self searchInsertWithArray:array Target:2];
     NSInteger res3 = [self searchInsertWithArray:array Target:7];
     NSLog(@"res1=%ld",(long)res1);
     NSLog(@"res2=%ld",(long)res2);
     NSLog(@"res3=%ld",(long)res3);
     */
    
    
    /*
     NSArray *arr1 = @[@9,@9,@9];
     NSArray *arr2 = @[@1,@9,@9];
     NSArray *arr3 = @[@1,@2,@3];
     NSArray *res1 = [self plusOneWithArray:arr1];
     NSArray *res2 = [self plusOneWithArray:arr2];
     NSArray *res3 = [self plusOneWithArray:arr3];
     */
    
    
    /*
     NSArray *nums = @[@4,@1,@2,@1,@2,@4,@8];
     NSInteger res = [self singleNumber:nums];
     NSLog(@"res===%ld",res);
     */
    
    /*
     int x1 = 17;
     int x2 = 87;
     int x3 = 3;
     int res1 = [self mySqrtz:x1];
     int res2 = [self mySqrtz:x2];
     int res3 = [self mySqrtz:x3];
     NSLog(@"%d-%d-%d",res1,res2,res3);
     */
    
    /*
     NSString *res = [self addStringsWtihStr1:@"11" Str2:@"123"];
     NSLog(@"res==%@",res);
     */
    
    /*
     NSString *str1 = @"A man, a plan, a canal: Panama";
     BOOL res1 = [self isPalindrome:str1];
     NSString *str2 = @"race a car";
     BOOL res2 = [self isPalindrome:str2];
     */
    
    /*
     NSArray *arr0 = [self getRow:0];
     NSArray *arr1 = [self getRow:1];
     NSArray *arr2 = [self getRow:2];
     NSArray *arr3 = [self getRow:3];
     NSArray *arr4 = [self getRow:4];
     NSArray *arr5 = [self getRow:5];
     NSArray *arr6 = [self getRow:6];
     NSLog(@"arr==%@\n%@\n%@\n%@\n%@\n%@\n%@\n",arr0,arr1,arr2,arr3,arr4,arr5,arr6);
     */
}

#pragma mark - 杨辉三角 II
/*!
 @method
 @brief 杨辉三角 II
 @discussion https://leetcode.cn/problems/pascals-triangle-ii/
 */
- (NSArray *)getRow:(NSInteger)rowIndex {
    // 初始化第一行
    NSMutableArray *row = [NSMutableArray arrayWithObject:@1];
    // 逐行生成直到第 rowIndex 行
    for (NSInteger i = 1; i <= rowIndex; i++) {
        // 生成当前行的第一个数字
        NSMutableArray *current = [NSMutableArray arrayWithObject:@1];
        // 生成当前行的中间数字
        for (NSInteger j = 1; j < i; j++) {
            NSNumber *num = @([row[j-1] integerValue] + [row[j] integerValue]);
            [current addObject:num];
        }
        // 生成当前行的最后一个数字
        [current addObject:@1];
        // 更新 row
        row = current;
    }
    return [row copy];
}

#pragma mark - 验证回文串
/*!
 @method
 @brief 验证回文串
 @discussion https://leetcode.cn/problems/valid-palindrome/
 */
- (BOOL)isPalindrome:(NSString *)string {
    NSString *sgood = @"";
    int length = (int)string.length;
    string = [string lowercaseString];
    //    NSLog(@"string===%@",string);
    for (int i = 0; i<length; i++) {
        unichar c = [string characterAtIndex:i];
        if((c > 96)&&(c < 123)) {
            sgood = [sgood stringByAppendingFormat:@"%c",c];
        }
    }
    //    NSLog(@"sgood===%@",sgood);
    int n = (int)sgood.length;
    int left = 0; int right = n - 1;
    while (left < right) {
        NSString *left_s = [sgood substringWithRange:NSMakeRange(left, 1)];
        NSString *right_s = [sgood substringWithRange:NSMakeRange(right, 1)];
        if (![left_s isEqualToString:right_s]) {
            return NO;
        }
        left++;
        right--;
    }
    
    return YES;
}

#pragma mark - 字符串相加
/*!
 @method
 @brief 字符串相加
 @discussion https://leetcode.cn/problems/add-strings/
 */
- (NSString *)addStringsWtihStr1:(NSString *)str1 Str2:(NSString *)str2 {
    int i = (int)str1.length - 1;
    int j = (int)str2.length - 1;
    int add = 0;
    NSString *ans = @"";
    while (i >= 0 || j >= 0 || add !=0) {
        int x = i >= 0 ? [[str1 substringWithRange:NSMakeRange(i, 1)] intValue] : 0;
        int y = j >= 0 ? [[str2 substringWithRange:NSMakeRange(j, 1)] intValue] : 0;
        int result = x + y + add;
        add = result / 10;
        ans = [NSString stringWithFormat:@"%@%d",ans,result%10];
        i--;
        j--;
    }
    
    NSLog(@"ans==%@",ans);
    NSString *resStr = [self reverseString:ans];
    NSLog(@"resStr==%@",resStr);
    
    return resStr;
}

#pragma mark - 字符串反转
- (NSString *)reverseString:(NSString *)string {
    NSMutableString *reversed = [NSMutableString stringWithCapacity:string.length];
    NSRange range = NSMakeRange(0, string.length);
    [string enumerateSubstringsInRange:range
                               options:NSStringEnumerationByComposedCharacterSequences
                            usingBlock:^(NSString * _Nullable substring, NSRange substringRange,
                                         NSRange enclosingRange, BOOL * _Nonnull stop) {
        [reversed insertString:substring atIndex:0];
    }];
    return [reversed copy];
}

#pragma mark - x的平方根
/*!
 @method
 @brief x的平方根
 @discussion https://leetcode.cn/problems/sqrtx/
 */
- (int)mySqrtz:(int)x {
    int left = 0;
    int right = x;
    int ans = -1;
    while (left <= right) {
        int mid = left + (right-left)/2;
        if (mid*mid <= x) {
            ans = mid;
            left = mid+1;
        } else {
            right = mid-1;
        }
    }
    
    return ans;
}

#pragma mark - 只出现一次的数字
/*!
 @method
 @brief 只出现一次的数字
 @discussion https://leetcode.cn/problems/single-number/
 */
- (NSInteger)singleNumber:(NSArray *)nums {
    NSInteger single = 0;
    for (id num in nums) {
        single ^=  [num integerValue];
    }
    return single;
}


#pragma mark - 二进制求和    待完善
/*!
 @method
 @brief 二进制求和
 @discussion https://leetcode.cn/problems/add-binary/
 */
- (NSString *)addBinaryWithStringA:(NSString *)strA StringB:(NSString *)strB {
    //    NSString *ans  = @"";
    //    int n = (int)MAX(strA.length, strB.length);
    //    int carry = 0;
    //    for (int i = 0; i < n; i++) {
    //        carry = carry + i;
    //        carry < strA.length ?
    //    }
    //
    //
    
    return nil;
}

#pragma mark - 加一
/**
 desc: 不用纠结某一位是不是9，而应该去判断加1之后是不是0,  倒序遍历
 */
/*!
 @method
 @brief 加一
 @discussion https://leetcode.cn/problems/plus-one/
 */
- (NSArray *)plusOneWithArray:(NSArray *)digits {
    NSMutableArray *temp_arr = digits.mutableCopy;
    for (NSInteger i = digits.count-1; i >= 0; i--) {
        int ele = ([digits[i] integerValue] + 1) % 10;
        [temp_arr replaceObjectAtIndex:i withObject:@(ele)];
        if (ele != 0) {
            return temp_arr.copy;
        }
    }
    [temp_arr insertObject:@(1) atIndex:0];
    
    return temp_arr.copy;
}


#pragma mark - 搜索插入位置
/*!
 @method
 @brief 搜索插入位置
 @discussion  https://leetcode.cn/problems/search-insert-position/
 */
- (NSInteger)searchInsertWithArray:(NSArray *)array Target:(NSInteger)target {
    NSInteger left = 0;
    NSInteger right = array.count - 1;
    NSInteger ans = array.count;
    while (left <= right) {
        long int mid = (right - left)/2 + left;
        if (target <= [array[mid] integerValue]) {
            ans = mid;
            right = mid - 1;
        } else {
            left = mid + 1;
        }
    }
    
    return ans;
}

#pragma mark - 买卖股票的最佳时机
/*!
 @method
 @brief 买卖股票的最佳时机
 @discussion https://leetcode.cn/problems/best-time-to-buy-and-sell-stock/
 */
- (NSInteger)maxProfitWithArray:(NSArray *)array {
    NSInteger minPrice = NSIntegerMax;
    NSInteger maxProfit = 0;
    NSInteger buyDay = 0;
    NSInteger sallDay = 0;
    for (int i = 0; i < array.count; i++) {
        NSInteger element = [array[i] integerValue];
        if (element < minPrice) {
            minPrice = element;
            buyDay = i;
        }
        if (element - minPrice > maxProfit) {
            maxProfit = element - minPrice;
            sallDay = i;
        }
    }
    
    return maxProfit;
}

#pragma mark - 合并两个有序数组
/*!
 @method
 @brief 合并两个有序数组
 @discussion https://leetcode.cn/problems/merge-sorted-array/
 */
- (NSArray *)mergeWithNums1:(NSArray *)nums1 M:(int)m  Nums2:(NSArray *)nums2 N:(int)n {
    int p = 0;
    int q = 0;
    NSMutableArray *mArr = [NSMutableArray array];
    id temp = 0;
    while (p < m || q < n) {
        if (p == m) {
            temp = nums2[q++];
        } else if (q == n){
            temp = nums1[p++];
        }else if (nums1[p] < nums2[q]) {
            temp = nums1[p++];
        } else {
            temp = nums2[q++];
        }
        // 注意下标
        [mArr insertObject:temp atIndex:(p+q-1)];
    }
    
    return mArr.copy;
}

#pragma mark - 删除排序数组中的重复项
/*!
 @method
 @brief 删除有序数组中的重复项
 @discussion https://leetcode.cn/problems/remove-duplicates-from-sorted-array/
 */
- (NSArray *)removeDuplicates:(NSArray *)array {
    if (array == NULL || array.count == 0) {
        return nil;
    }
    NSMutableArray *mArr = [array mutableCopy];
    int p = 0;
    int q = 1;
    while (q < mArr.count) {
        if (mArr[p] != mArr[q]) {
            //注意:避免相邻位置赋值,并且赋值的位置应该为p+1
            if (q - p > 1) {
                [mArr  replaceObjectAtIndex:p+1 withObject:mArr[q]];
            }
            p++;
        }
        q++;
    }
    return [mArr subarrayWithRange:NSMakeRange(0, p+1)];
}

#pragma mark - 爬楼梯
/*!
 @method
 @brief 爬楼梯
 @discussion https://leetcode.cn/problems/climbing-stairs/
 */
- (int)climbStairsWithNum:(int)num {
    if (num <= 0){
        return 0;
    }
    int p = 0, q = 0, r = 1;
    for (int i = 0; i < num; i++) {
        p = q;
        q = r;
        r = p + q;
    }
    
    return r;
}

#pragma mark - 盛最多水的容器
/*!
 @method
 @brief 盛最多水的容器
 @discussion  https://leetcode.cn/problems/container-with-most-water/
 */
- (int)maxAreaWithHeightArray:(NSArray *)h_array {
    if (h_array.count == 0) {
        return 0;
    }
    int left_index = 0;
    int right_index = (int)h_array.count - 1;
    int ans = 0;
    while (left_index < right_index) {
        int left_value = [[h_array objectAtIndex:left_index] intValue];
        int right_value = [[h_array objectAtIndex:right_index] intValue];
        int area = MIN(left_value, right_value) * (right_index - left_index);
        ans = MAX(ans, area);
        if (left_value < right_value) {
            left_index++;
        } else {
            right_index--;
        }
    }
    return ans;
}

#pragma mark - 数组中两数之和等于目标值
/*!
 @method
 @brief 数组中两数之和等于目标值
 @discussion https://leetcode.cn/problems/two-sum/
 */
- (NSArray *)twoSumWithArray:(NSArray *)array Target:(int)target {
    for (int i = 0; i < array.count; i++) {
        for (int j = i+1; j < array.count; j++) {
            if ([ array[i] intValue] + [array[j] intValue] == target) {
                return @[@(i),@(j)];
            }
        }
    }
    
    return @[];
}

#pragma mark - 最长公共前缀
/*!
 @method
 @brief 最长公共前缀
 @discussion https://leetcode.cn/problems/longest-common-prefix/
 */
- (NSString *)longestCommonPrefix:(NSArray *)strs {
    if (strs == NULL || strs.count == 0) {
        return @"";
    }
    NSString *first_ele = strs[0];
    NSUInteger length = first_ele.length;
    NSUInteger count = strs.count;
    for (int i = 0; i < length; i++) {
        NSString *c = [first_ele substringWithRange:NSMakeRange(i, 1)];
        for (int j = 1; j < count; j++) {
            NSString *ele_j = strs[j];
            if (i == ele_j.length || [ele_j substringWithRange:NSMakeRange(i, 1)] != c) {
                return [first_ele substringWithRange:NSMakeRange(0, i)];
            }
        }
    }
    return strs[0];
}

#pragma mark - 最后一个单词的长度
/*!
 @method
 @brief 最后一个单词的长度
 @discussion https://leetcode.cn/problems/length-of-last-word/
 */
- (int)lengthOfLastWordWithString:(NSString *)string {
    if (string.length == 0) {
        return 0;
    }
    
    int end = (int)string.length - 1;
    while (end >= 0 && [[string substringWithRange:NSMakeRange(end, 1)] isEqualToString:@" "]) {
        end--;
    }
    if (end < 0) {
        return 0;
    }
    
    int start = end;
    while (start >= 0 && ![[string substringWithRange:NSMakeRange(start, 1)] isEqualToString:@" "]) {
        start--;
    }
    
    return end - start;
}


@end
