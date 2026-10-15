package com.vungle.warren.utility;

import android.os.Build;
import android.os.Looper;

/* JADX INFO: loaded from: classes2.dex */
public class ThreadUtil {
    public static boolean isMainThread() {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            return mainLooper.isCurrentThread();
        }
        Looper looperMyLooper = Looper.myLooper();
        return looperMyLooper != null && mainLooper.getThread().equals(looperMyLooper.getThread());
    }
}
