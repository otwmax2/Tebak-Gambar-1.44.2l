package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;

/* JADX INFO: compiled from: FragmentHostCallback.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class k<E> extends g {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Activity f3259o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Context f3260p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Handler f3261q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f3262r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final n f3263s;

    k(e eVar) {
        this(eVar, eVar, new Handler(), 0);
    }

    @Override // androidx.fragment.app.g
    public View c(int i10) {
        return null;
    }

    @Override // androidx.fragment.app.g
    public boolean d() {
        return true;
    }

    Activity e() {
        return this.f3259o;
    }

    Context f() {
        return this.f3260p;
    }

    Handler g() {
        return this.f3261q;
    }

    public abstract E h();

    public LayoutInflater i() {
        return LayoutInflater.from(this.f3260p);
    }

    @Deprecated
    public void j(Fragment fragment, String[] strArr, int i10) {
    }

    public boolean k(Fragment fragment) {
        return true;
    }

    public boolean l(String str) {
        return false;
    }

    public void m(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i10, Bundle bundle) {
        if (i10 != -1) {
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        androidx.core.content.a.l(this.f3260p, intent, bundle);
    }

    @Deprecated
    public void n(Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13, Bundle bundle) throws IntentSender.SendIntentException {
        if (i10 != -1) {
            throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
        }
        androidx.core.app.b.y(this.f3259o, intentSender, i10, intent, i11, i12, i13, bundle);
    }

    public void o() {
    }

    k(Activity activity, Context context, Handler handler, int i10) {
        this.f3263s = new o();
        this.f3259o = activity;
        this.f3260p = (Context) androidx.core.util.h.g(context, "context == null");
        this.f3261q = (Handler) androidx.core.util.h.g(handler, "handler == null");
        this.f3262r = i10;
    }
}
