package com.twitter.sdk.android.core;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: compiled from: IntentUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class g {
    public static boolean a(Context context, Intent intent) {
        return !context.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
    }
}
