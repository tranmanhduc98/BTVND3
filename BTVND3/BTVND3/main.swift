//
//  main.swift
//  BTVND3
//
//  Created by Trần Thanh Nguyên on 23/05/2021.
//

import Foundation


/*
 1.

 Viết hàm trả về số ngày có trong 1 tháng.

 Lưu ý: Với tháng 2 có 29 ngày nếu là năm nhuận, 28 ngày nếu là năm không nhuận.

 2.

 Tính tổng các chữ số trong 1 số nguyên dương.

 3.

 In ra một chuỗi, nếu chuỗi có độ dài lớn hơn 10 ký tự thì thực hiện cắt chuỗi lấy 10 ký tự và hiển thị phía sau là dấu ba chấm (10 kí tự + ...)

 Ví dụ: Tôi học lớ....

 4.

 Tìm số nhỏ nhất và lớn nhất trong mảng số nguyên.

 5.

 Tìm số lớn thứ 2 trong mảng số nguyên.

 6.

 In một chuỗi cho trước theo thứ tự ngược lại (Ví dụ: Hello in thành olleH)

 7.

 Viết chương trình vẽ một tam giác cân bằng các dấu * với chiều cao h (h > 1) cho trước.

         *

       * * *

     * * * * *

 8*.

 Sắp xếp mảng số nguyên theo chiều tăng dần và giảm dần (không sử dụng hàm có sẵn).

 9*.

 Viết chương trình nhập vào một số nguyên dương không lớn hơn 10000, in ra màn hình chữ số lớn thứ nhì có trong số đó (ví dụ nhập n = 1356 in ra 5). Trong trường hợp không có số lớn thứ nhì, thì in ra số lớn nhất.

 10*.

 Viết chương trình vẽ một chữ X bằng các dấu * với chiều cao h (chiều cao lớn hơn 0 và là số lẻ)

     *   *

      * *

       *

      * *

     *   *

*/

//1.

/*Viết hàm trả về số ngày có trong 1 tháng.

Lưu ý: Với tháng 2 có 29 ngày nếu là năm nhuận, 28 ngày nếu là năm không nhuận.

*/
//MARK: - bài 1
func countDay(year : Int, month : Int)
{
    if year % 4 == 0 && year % 100 != 0
    {
        if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12
        {
            print("tháng \(month) có 31 ngày ")
        }
         else if  month == 4 || month == 6 || month == 9 || month == 11
            {
            print("tháng \(month) có 30 ngày ")
            }
        else if month == 2
        {
            print("tháng \(month) có 29 ngày ")
        }
    }
    else
    {
        if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12
        {
            print("tháng \(month) có 31 ngày ")
        }
         else if  month == 4 || month == 6 || month == 9 || month == 11
            {
            print("tháng \(month) có 30 ngày ")
            }
        else if month == 2
        {
            print("tháng \(month) có 28 ngày ")
        }
    }
}
countDay(year: 2020, month: 2)
//MARK: - bài 2
// tính tổng chữ số trong 1 số nguyên

func sumNumber( a : Int)
{
    var b : Int = a
    var tachso : Int = 0
    var sum : Int = 0
    if a < 0 {
        print("số ko hợp lệ")
    }
    else
    {
        while b > 0
    {
        tachso = b % 10
        sum  = sum + tachso
        b = b / 10
    }
    print("Tong cac chu so cua so da cho = \(sum)");
    }
}
sumNumber( a : 10)
//MARK: - bài 3
//3.

//In ra một chuỗi, nếu chuỗi có độ dài lớn hơn 10 ký tự thì thực hiện cắt chuỗi lấy 10 ký tự và hiển thị phía sau là dấu ba chấm (10 kí tự + ...)

//Ví dụ: Tôi học lớ....
//
func printString(a : String)
{
    if a.count  > 10
    {
        let x1 = a.prefix(10)
        print("\(x1)...")
    }
    else
    {
        print(a)
    }
    
}
printString(a: "tran manh duc")
//MARK: - bài 4
//Tìm số nhỏ nhất và lớn nhất trong mảng số nguyên.

func minmaxArray(a : [Int]) -> (soMin : Int, soMax: Int)
{
    let b : Int = a.count
    var min : Int = a[0]
    var max : Int = a[0]
    for i in a[1 ..< b]
    {
        if  i > max
        {
            max = i
        }
        else if i < min  {
            min = i
        }
    }
    return (min , max)
}

let num = minmaxArray(a: [1,4,5,67,8,9,5,-4])

print("min : \(num.soMin) va max : \(num.soMax)")
//MARK: - bài 5
//Tìm số lớn thứ 2 trong mảng số nguyên.
func max(a : [Int]) ->  ( max : Int , VT : Int)
{
    var vtmax  = 0
    let b : Int = a.count
    var max : Int = a[0]
    for i in 1 ..< b
    {
        if  a[i] > max
        {
            max = a[i]
            vtmax = i
        }
}
    return (max , vtmax)
}
var arr = [67,8,5,-4]
let num1 = max( a : arr)
arr.remove(at : num1.VT)
let num2 = max(a: arr)
print("só lon thu 2 là \(num2.max)")
//MARK: - bài 6
// In một chuỗi cho trước theo thứ tự ngược lại (Ví dụ: Hello in thành olleH)
let name = "nguyen"
for i in name.reversed()
{
    print(i)
}
//MARK: -bài 7
//Viết chương trình vẽ một tam giác cân bằng các dấu * với chiều cao h (h > 1) cho trước.

//    *

//  * * *

//* * * * *

func drawTrip (h : Int)
{
    for i in 1 ... h
    {
        for j in 1 ... h-1
        {
            print(" ")
            
        }
        let k : Int = 2*i  - 1
        for j in 1 ... k
        {
            print("*")
        }
    }
}
drawTrip(h: 3)
//MARK: -BÀI 8

//Sắp xếp mảng số nguyên theo chiều tăng dần và giảm dần (không sử dụng hàm có sẵn).


 
