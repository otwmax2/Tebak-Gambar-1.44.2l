package androidx.activity;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import androidx.lifecycle.j;
import androidx.lifecycle.n;
import androidx.lifecycle.o;
import t9.m;

/* JADX INFO: compiled from: ComponentDialog.kt */
/* JADX INFO: loaded from: classes.dex */
public class f extends Dialog implements n, i {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private o f219o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final OnBackPressedDispatcher f220p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Context context, int i10) {
        super(context, i10);
        m.e(context, "context");
        this.f220p = new OnBackPressedDispatcher(new Runnable() { // from class: androidx.activity.e
            @Override // java.lang.Runnable
            public final void run() {
                f.c(this.f218o);
            }
        });
    }

    private final o b() {
        o oVar = this.f219o;
        if (oVar != null) {
            return oVar;
        }
        o oVar2 = new o(this);
        this.f219o = oVar2;
        return oVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(f fVar) {
        m.e(fVar, "this$0");
        super.onBackPressed();
    }

    @Override // androidx.lifecycle.n
    public final androidx.lifecycle.j getLifecycle() {
        return b();
    }

    @Override // androidx.activity.i
    public final OnBackPressedDispatcher getOnBackPressedDispatcher() {
        return this.f220p;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        this.f220p.g();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            this.f220p.h(getOnBackInvokedDispatcher());
        }
        b().h(j.b.ON_CREATE);
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        b().h(j.b.ON_RESUME);
    }

    @Override // android.app.Dialog
    protected void onStop() {
        b().h(j.b.ON_DESTROY);
        this.f219o = null;
        super.onStop();
    }
}
