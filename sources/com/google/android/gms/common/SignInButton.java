package com.google.android.gms.common;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zaaa;
import com.google.android.gms.common.internal.zaz;
import com.google.android.gms.dynamic.RemoteCreator;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class SignInButton extends FrameLayout implements View.OnClickListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f6930o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f6931p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private View f6932q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private View.OnClickListener f6933r;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface ButtonSize {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface ColorScheme {
    }

    private final void b(Context context) {
        View view = this.f6932q;
        if (view != null) {
            removeView(view);
        }
        try {
            this.f6932q = zaz.c(context, this.f6930o, this.f6931p);
        } catch (RemoteCreator.RemoteCreatorException unused) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            int i10 = this.f6930o;
            int i11 = this.f6931p;
            zaaa zaaaVar = new zaaa(context, null);
            zaaaVar.a(context.getResources(), i10, i11);
            this.f6932q = zaaaVar;
        }
        addView(this.f6932q);
        this.f6932q.setEnabled(isEnabled());
        this.f6932q.setOnClickListener(this);
    }

    public void a(int i10, int i11) {
        this.f6930o = i10;
        this.f6931p = i11;
        b(getContext());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        View.OnClickListener onClickListener = this.f6933r;
        if (onClickListener == null || view != this.f6932q) {
            return;
        }
        onClickListener.onClick(this);
    }

    public void setColorScheme(int i10) {
        a(this.f6930o, i10);
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        this.f6932q.setEnabled(z10);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f6933r = onClickListener;
        View view = this.f6932q;
        if (view != null) {
            view.setOnClickListener(this);
        }
    }

    @Deprecated
    public void setScopes(Scope[] scopeArr) {
        a(this.f6930o, this.f6931p);
    }

    public void setSize(int i10) {
        a(i10, this.f6931p);
    }
}
