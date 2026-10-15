package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public interface zzaps {
    void a(View view);

    void b(StackTraceElement[] stackTraceElementArr);

    String c(Context context);

    @Deprecated
    void d(int i10, int i11, int i12);

    String e(Context context, String str, View view, Activity activity);

    void f(MotionEvent motionEvent);

    String g(Context context, View view, Activity activity);

    String h(Context context, String str, View view);
}
