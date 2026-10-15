package y8;

import java.util.Random;

/* JADX INFO: compiled from: StringUtil.java */
/* JADX INFO: loaded from: classes2.dex */
public class x {
    public static String a() {
        String str = " ";
        for (int i10 = 0; i10 < 5; i10++) {
            str = str + "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".charAt(new Random().nextInt(36)) + " ";
        }
        return str;
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        return str.trim();
    }
}
