package com.twitter.sdk.android.core;

import android.annotation.SuppressLint;
import android.content.Context;
import com.twitter.sdk.android.core.a0;
import com.twitter.sdk.android.core.e;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Service;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: TwitterCore.java */
/* JADX INFO: loaded from: classes2.dex */
public class x {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    static volatile x f27517i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    n<a0> f27518a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    n<e> f27519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    c9.g<a0> f27520c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final r f27521d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ConcurrentHashMap<m, p> f27522e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Context f27523f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile p f27524g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile f f27525h;

    x(r rVar) {
        this(rVar, new ConcurrentHashMap(), null);
    }

    private synchronized void b() {
        if (this.f27525h == null) {
            this.f27525h = new f(new OAuth2Service(this, new c9.j()), this.f27519b);
        }
    }

    public static x h() {
        if (f27517i == null) {
            synchronized (x.class) {
                if (f27517i == null) {
                    f27517i = new x(o.f().h());
                    o.f().e().execute(new Runnable() { // from class: com.twitter.sdk.android.core.w
                        @Override // java.lang.Runnable
                        public final void run() {
                            x.k();
                        }
                    });
                }
            }
        }
        return f27517i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void k() {
        f27517i.c();
    }

    void c() {
        this.f27518a.c();
        this.f27519b.c();
        f();
        this.f27520c.a(o.f().c());
    }

    public p d(a0 a0Var) {
        if (!this.f27522e.containsKey(a0Var)) {
            this.f27522e.putIfAbsent(a0Var, new p(a0Var));
        }
        return this.f27522e.get(a0Var);
    }

    public r e() {
        return this.f27521d;
    }

    public f f() {
        if (this.f27525h == null) {
            b();
        }
        return this.f27525h;
    }

    public String g() {
        return "com.twitter.sdk.android:twitter-core";
    }

    public n<a0> i() {
        return this.f27518a;
    }

    public String j() {
        return "3.3.0.12";
    }

    x(r rVar, ConcurrentHashMap<m, p> concurrentHashMap, p pVar) {
        this.f27521d = rVar;
        this.f27522e = concurrentHashMap;
        this.f27524g = pVar;
        Context contextD = o.f().d(g());
        this.f27523f = contextD;
        this.f27518a = new i(new e9.b(contextD, "session_store"), new a0.a(), "active_twittersession", "twittersession");
        this.f27519b = new i(new e9.b(contextD, "session_store"), new e.a(), "active_guestsession", "guestsession");
        this.f27520c = new c9.g<>(this.f27518a, o.f().e(), new c9.k());
    }
}
