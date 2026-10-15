package c4;

import android.os.Build;

/* JADX INFO: compiled from: CircularRevealHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f4856a;

    static {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 21) {
            f4856a = 2;
        } else if (i10 >= 18) {
            f4856a = 1;
        } else {
            f4856a = 0;
        }
    }
}
