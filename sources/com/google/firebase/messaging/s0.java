package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class s0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static WeakReference<s0> f26525d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SharedPreferences f26526a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private o0 f26527b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f26528c;

    private s0(SharedPreferences sharedPreferences, Executor executor) {
        this.f26528c = executor;
        this.f26526a = sharedPreferences;
    }

    public static synchronized s0 a(Context context, Executor executor) {
        WeakReference<s0> weakReference = f26525d;
        s0 s0Var = weakReference != null ? weakReference.get() : null;
        if (s0Var != null) {
            return s0Var;
        }
        s0 s0Var2 = new s0(context.getSharedPreferences("com.google.android.gms.appid", 0), executor);
        s0Var2.c();
        f26525d = new WeakReference<>(s0Var2);
        return s0Var2;
    }

    private synchronized void c() {
        this.f26527b = o0.c(this.f26526a, "topic_operation_queue", ",", this.f26528c);
    }

    synchronized r0 b() {
        return r0.a(this.f26527b.e());
    }

    synchronized boolean d(r0 r0Var) {
        return this.f26527b.f(r0Var.e());
    }
}
