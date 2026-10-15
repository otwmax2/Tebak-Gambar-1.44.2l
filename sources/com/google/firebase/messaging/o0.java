package com.google.firebase.messaging;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SharedPreferences f26501a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Executor f26505e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayDeque<String> f26504d = new ArrayDeque<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f26506f = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f26502b = "topic_operation_queue";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f26503c = ",";

    private o0(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        this.f26501a = sharedPreferences;
        this.f26505e = executor;
    }

    private boolean b(boolean z10) {
        if (!z10 || this.f26506f) {
            return z10;
        }
        i();
        return true;
    }

    static o0 c(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        o0 o0Var = new o0(sharedPreferences, "topic_operation_queue", ",", executor);
        o0Var.d();
        return o0Var;
    }

    private void d() {
        synchronized (this.f26504d) {
            this.f26504d.clear();
            String string = this.f26501a.getString(this.f26502b, BuildConfig.FLAVOR);
            if (!TextUtils.isEmpty(string) && string.contains(this.f26503c)) {
                String[] strArrSplit = string.split(this.f26503c, -1);
                if (strArrSplit.length == 0) {
                    Log.e("FirebaseMessaging", "Corrupted queue. Please check the queue contents and item separator provided");
                }
                for (String str : strArrSplit) {
                    if (!TextUtils.isEmpty(str)) {
                        this.f26504d.add(str);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void a() {
        synchronized (this.f26504d) {
            this.f26501a.edit().putString(this.f26502b, g()).commit();
        }
    }

    private void i() {
        this.f26505e.execute(new Runnable(this) { // from class: com.google.firebase.messaging.n0

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            private final o0 f26496o;

            {
                this.f26496o = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f26496o.a();
            }
        });
    }

    public String e() {
        String strPeek;
        synchronized (this.f26504d) {
            strPeek = this.f26504d.peek();
        }
        return strPeek;
    }

    public boolean f(Object obj) {
        boolean zRemove;
        synchronized (this.f26504d) {
            zRemove = this.f26504d.remove(obj);
            b(zRemove);
        }
        return zRemove;
    }

    public String g() {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = this.f26504d.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(this.f26503c);
        }
        return sb.toString();
    }
}
