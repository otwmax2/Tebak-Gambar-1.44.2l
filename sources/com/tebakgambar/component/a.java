package com.tebakgambar.component;

import android.app.Activity;
import android.app.Dialog;
import android.content.res.Resources;
import android.os.Handler;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import androidx.databinding.g;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.tebakgambar.Henson;
import com.tebakgambar.R;
import com.tebakgambar.component.b;
import java.text.DecimalFormat;
import o8.i0;

/* JADX INFO: compiled from: IncreaseLifeDialog.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends Dialog implements b.c {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private i0 f26851o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private m8.a f26852p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Activity f26853q;

    /* JADX INFO: renamed from: com.tebakgambar.component.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: IncreaseLifeDialog.java */
    class C0129a extends FullScreenContentCallback {
        C0129a() {
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void b() throws Throwable {
            super.b();
            a.this.f26852p.k();
            a.this.p();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void c(AdError adError) {
            super.c(adError);
            j8.b.l().g();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void e() {
            j8.b.l().g();
        }
    }

    /* JADX INFO: compiled from: IncreaseLifeDialog.java */
    class b extends FullScreenContentCallback {
        b() {
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void b() throws Throwable {
            super.b();
            if (j8.b.l().q()) {
                a.this.f26852p.k();
            }
            j8.b.l().x(false);
            a.this.p();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void c(AdError adError) {
            super.c(adError);
            j8.b.l().h();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void e() {
            super.e();
            j8.b.l().h();
        }
    }

    a(Activity activity) {
        super(activity, R.style.CustomDialog);
        this.f26853q = activity;
        h();
        g();
    }

    private void g() {
        m();
        l();
    }

    private void h() {
        requestWindowFeature(1);
        this.f26851o = (i0) g.h(LayoutInflater.from(getContext()), R.layout.layout_dialog_increase_life, null, false);
        this.f26852p = m8.a.f();
        setContentView(this.f26851o.S());
        n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(View view) {
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(View view) {
        k();
    }

    private void l() {
        j8.b.l().t(new C0129a());
    }

    private void m() {
        j8.b.l().v(new b());
    }

    private void n() {
        Resources resources = getContext().getResources();
        String string = resources.getString(R.string.button_increase_life_see_ads);
        int length = resources.getString(R.string.button_increase_life_see_ads_highlight).length();
        SpannableString spannableString = new SpannableString(string);
        spannableString.setSpan(new ForegroundColorSpan(resources.getColor(R.color.color_yellow1)), 0, length, 34);
        this.f26851o.P.setText(spannableString);
        this.f26851o.P.setOnClickListener(new View.OnClickListener() { // from class: j8.p0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30872o.i(view);
            }
        });
        this.f26851o.O.setOnClickListener(new View.OnClickListener() { // from class: j8.o0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30870o.j(view);
            }
        });
    }

    private void o() {
        if (j8.b.l().p()) {
            j8.b.l().A(this.f26853q);
        } else {
            if (j8.b.l().m()) {
                j8.b.l().z(this.f26853q);
                return;
            }
            Activity activity = this.f26853q;
            activity.startActivityForResult(Henson.with(activity).f().isFromIncreaseDialog(true).build(), 12000);
            k();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        this.f26851o.R.setVisibility(8);
        this.f26851o.T.setVisibility(0);
        this.f26851o.S.setBackgroundResource(0);
        new Handler().postDelayed(new Runnable() { // from class: j8.q0
            @Override // java.lang.Runnable
            public final void run() {
                this.f30874o.k();
            }
        }, 1200L);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    /* JADX INFO: renamed from: dismiss, reason: merged with bridge method [inline-methods] */
    public void k() {
        j8.b.l().i();
        j8.b.l().j();
        super.dismiss();
    }

    @Override // com.tebakgambar.component.b.c
    public void e(long j10) {
        int iG = this.f26852p.g();
        long j11 = this.f26852p.j();
        if (iG != 5) {
            DecimalFormat decimalFormat = new DecimalFormat("00");
            long j12 = (j11 - j10) / 1000;
            this.f26851o.V.setText(String.format("%s:%s ", decimalFormat.format(j12 / 60), decimalFormat.format(j12 % 60)));
        } else {
            Activity ownerActivity = getOwnerActivity();
            if (ownerActivity == null || ownerActivity.isFinishing()) {
                return;
            }
            k();
        }
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        com.tebakgambar.component.b.f().e(this);
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        com.tebakgambar.component.b.f().g(this);
    }
}
