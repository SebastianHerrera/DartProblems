package sample;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class Main  {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        ArrayList nums = new ArrayList();

        for (int i = 1; i <= 300; i++) {
            nums.add(sc.nextInt());
        }


        System.out.println(Collections.max(nums) + " " + Collections.min(nums));


    }
}
