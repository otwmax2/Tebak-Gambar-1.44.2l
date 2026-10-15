package com.tebakgambar;

import android.app.Dialog;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.activity.g;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.e;
import com.facebook.appevents.AppEventsConstants;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomImageView;
import com.tebakgambar.component.CustomTextView;
import com.tebakgambar.model.Level;
import com.tebakgambar.model.ResultEventClue;
import com.tebakgambar.model.ResultEvents;
import com.tebakgambar.question.EventQuestionActivity;
import com.tebakgambar.selfie.EditFrameActivity;
import com.vungle.warren.AdLoader;
import g8.i;
import j8.c0;
import j8.k0;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;
import java.util.concurrent.Callable;
import o8.m0;
import t1.h;
import t2.f;
import v2.j;
import y8.n;
import y8.o;
import y8.s;
import y8.w;
import y8.y;

/* JADX INFO: loaded from: classes2.dex */
public class QuotesActivity extends e implements View.OnClickListener, w.g {
    private RelativeLayout A;
    private ConstraintLayout B;
    private ConstraintLayout C;
    private ConstraintLayout D;
    private CustomImageView E;
    private View F;
    private CustomButton G;
    private AppCompatImageView H;
    private AppCompatImageView I;
    private LinearLayout J;
    private ConstraintLayout K;
    Dialog L;
    private ResultEventClue M;
    private Runnable N;
    private Uri O;
    private w P;
    private k0 Q;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f26753o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f26754p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f26755q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ResultEvents f26756r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private CustomTextView f26757s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private CustomTextView f26758t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private CustomTextView f26759u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private CustomTextView f26760v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private CustomTextView f26761w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private CustomButton f26762x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private CustomButton f26763y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f26764z;

    class a implements f<String, l2.b> {
        a() {
        }

        @Override // t2.f
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public boolean b(Exception exc, String str, j<l2.b> jVar, boolean z10) {
            QuotesActivity.this.H.setVisibility(0);
            return false;
        }

        @Override // t2.f
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(l2.b bVar, String str, j<l2.b> jVar, boolean z10, boolean z11) {
            return false;
        }
    }

    class b implements f<String, l2.b> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(View view) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(QuotesActivity.this.f26755q));
            QuotesActivity.this.startActivity(intent);
        }

        @Override // t2.f
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public boolean b(Exception exc, String str, j<l2.b> jVar, boolean z10) {
            QuotesActivity.this.F.setVisibility(0);
            QuotesActivity.this.E.setVisibility(8);
            return false;
        }

        @Override // t2.f
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public boolean a(l2.b bVar, String str, j<l2.b> jVar, boolean z10, boolean z11) {
            QuotesActivity.this.E.setOnClickListener(new View.OnClickListener() { // from class: com.tebakgambar.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f26780o.d(view);
                }
            });
            return false;
        }
    }

    class c extends g {
        c(boolean z10) {
            super(z10);
        }

        @Override // androidx.activity.g
        public void b() {
            try {
                if (QuotesActivity.this.f26756r != null) {
                    QuotesActivity quotesActivity = QuotesActivity.this;
                    if (!y.P(quotesActivity, quotesActivity.f26756r.id).equals(AppEventsConstants.EVENT_PARAM_VALUE_NO) && TextUtils.isEmpty(QuotesActivity.this.f26755q) && TextUtils.isEmpty(QuotesActivity.this.f26754p)) {
                        QuotesActivity.this.startActivity(new Intent(QuotesActivity.this.getBaseContext(), (Class<?>) AdsActivity.class).putExtra("event_data", QuotesActivity.this.f26756r));
                    } else {
                        QuotesActivity.this.i0();
                    }
                } else if (QuotesActivity.this.M == null) {
                    QuotesActivity.this.startActivity(new Intent(QuotesActivity.this.getBaseContext(), (Class<?>) AdsActivity.class).putExtra("level", QuotesActivity.this.f26764z));
                } else if (TextUtils.isEmpty(QuotesActivity.this.f26755q) && TextUtils.isEmpty(QuotesActivity.this.f26754p)) {
                    QuotesActivity.this.startActivity(new Intent(QuotesActivity.this.getBaseContext(), (Class<?>) AdsActivity.class).putExtra("event_clue", QuotesActivity.this.M));
                } else {
                    QuotesActivity.this.i0();
                }
            } catch (Exception unused) {
            }
            QuotesActivity.this.finish();
        }
    }

    class d implements s.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Runnable f26768a;

        d(Runnable runnable) {
            this.f26768a = runnable;
        }

        @Override // y8.s.a
        public void a() {
            QuotesActivity.this.Q.V(true);
        }

        @Override // y8.s.a
        public void b(Uri uri) {
            QuotesActivity.this.Q.V(false);
            QuotesActivity.this.O = uri;
            Runnable runnable = this.f26768a;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A0(View view) {
        this.L.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B0() {
        this.P.B(this.O);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C0() {
        try {
            h0(false, new Runnable() { // from class: g8.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f29939o.w0();
                }
            });
        } catch (n e10) {
            e10.printStackTrace();
            this.N = new Runnable() { // from class: g8.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f29942o.C0();
                }
            };
            androidx.core.app.b.t(this, e10.a(), 55);
        }
    }

    private void D0() {
        Dialog dialog = this.L;
        if (dialog == null) {
            Dialog dialog2 = new Dialog(this);
            this.L = dialog2;
            if (dialog2.getWindow() != null) {
                this.L.getWindow().requestFeature(1);
                this.L.getWindow().clearFlags(2);
                this.L.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            }
        } else if (dialog.isShowing()) {
            this.L.dismiss();
        }
        m0 m0VarU0 = m0.u0(LayoutInflater.from(this), null, false);
        m0VarU0.P.setOnClickListener(new View.OnClickListener() { // from class: g8.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f29952o.A0(view);
            }
        });
        m0VarU0.Q.setOnClickListener(new View.OnClickListener() { // from class: g8.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f29949o.x0(view);
            }
        });
        m0VarU0.R.setOnClickListener(new View.OnClickListener() { // from class: g8.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f29948o.y0(view);
            }
        });
        m0VarU0.S.setOnClickListener(new View.OnClickListener() { // from class: g8.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f29950o.z0(view);
            }
        });
        this.L.setContentView(m0VarU0.S());
        this.L.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E0() {
        try {
            h0(false, new Runnable() { // from class: g8.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f29940o.B0();
                }
            });
        } catch (n e10) {
            e10.printStackTrace();
            this.N = new Runnable() { // from class: g8.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f29941o.E0();
                }
            };
            androidx.core.app.b.t(this, e10.a(), 55);
        }
    }

    private void h0(boolean z10, Runnable runnable) throws n {
        k0 k0Var = (k0) getSupportFragmentManager().h0(R.id.frameAds);
        this.Q = k0Var;
        if (k0Var == null) {
            androidx.fragment.app.w wVarM = getSupportFragmentManager().m();
            wVarM.m(R.id.frameAds, new k0());
            wVarM.f();
            this.Q = (k0) getSupportFragmentManager().h0(R.id.frameAds);
        }
        s.d(z10, this, new d(runnable), new t1.e().d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0() {
        Intent intentBuild = Henson.with(this).e().build();
        intentBuild.setFlags(603979776);
        startActivity(intentBuild);
    }

    private void j0() {
        getOnBackPressedDispatcher().b(new c(true));
    }

    private void k0() {
        Dialog dialog = new Dialog(this);
        this.L = dialog;
        dialog.getWindow().requestFeature(1);
        this.L.getWindow().clearFlags(2);
        this.L.getWindow().setBackgroundDrawable(new ColorDrawable(0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l0() {
        if (!y8.a.d(this)) {
            new c0(this, R.style.CustomDialog, true, getString(R.string.instagram_not_found), Integer.valueOf(R.dimen.size_text)).show();
            return;
        }
        try {
            h0(true, new Runnable() { // from class: g8.g
                @Override // java.lang.Runnable
                public final void run() {
                    this.f29943o.m0();
                }
            });
        } catch (n e10) {
            e10.printStackTrace();
            this.N = new Runnable() { // from class: g8.h
                @Override // java.lang.Runnable
                public final void run() {
                    this.f29944o.l0();
                }
            };
            androidx.core.app.b.t(this, e10.a(), 55);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m0() {
        this.P.y(this.O);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n0(View view) {
        y.e0(this, this.f26753o);
        y.h0(this, this.f26753o, 0);
        if (TextUtils.isEmpty(this.f26755q) && TextUtils.isEmpty(this.f26754p)) {
            startActivity(new Intent(getBaseContext(), (Class<?>) AdsActivity.class).putExtra("event_clue", this.M).putExtra("isMainLagi", true));
        } else {
            startActivity(new Intent(getBaseContext(), (Class<?>) EventQuestionActivity.class).putExtra("event_clue", this.M));
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o0(View view) {
        if (TextUtils.isEmpty(this.M.mascot_image_url)) {
            startActivity(new Intent(getBaseContext(), (Class<?>) AdsActivity.class).putExtra("event_clue", this.M));
        } else {
            startActivity(new Intent(getBaseContext(), (Class<?>) EditFrameActivity.class).putExtra("event_clue", this.M));
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p0(View view) {
        D0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q0(View view) {
        y.x0(this, this.f26753o, AppEventsConstants.EVENT_PARAM_VALUE_NO);
        y.h0(this, this.f26753o, 0);
        if (TextUtils.isEmpty(this.f26755q) && TextUtils.isEmpty(this.f26754p)) {
            startActivity(new Intent(getBaseContext(), (Class<?>) AdsActivity.class).putExtra("event_data", this.f26756r).putExtra("isMainLagi", true));
        } else {
            startActivity(new Intent(getBaseContext(), (Class<?>) EventQuestionActivity.class).putExtra("event_data", this.f26756r));
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r0(View view) {
        if (y.P(this, this.f26753o).equals(AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
            startActivity(new Intent(getBaseContext(), (Class<?>) EventQuestionActivity.class).putExtra("event_data", this.f26756r));
        } else if (this.f26753o.equals("3")) {
            y.x0(getBaseContext(), this.f26753o, "-1");
            y.w0(getBaseContext(), this.f26753o, "-2");
            startActivity(new Intent(getBaseContext(), (Class<?>) EditFrameActivity.class).putExtra("event_data", this.f26756r));
        } else if (this.f26756r != null) {
            startActivity(new Intent(getBaseContext(), (Class<?>) EditFrameActivity.class).putExtra("event_data", this.f26756r));
        } else {
            startActivity(new Intent(getBaseContext(), (Class<?>) AdsActivity.class).putExtra("event_data", this.f26756r));
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s0(View view) {
        startActivity(new Intent(getBaseContext(), (Class<?>) EditFrameActivity.class).putExtra("event_data", this.f26756r));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Level t0() throws Exception {
        return Level.fromId(this.f26764z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ h u0(h hVar) throws Exception {
        Level level = (Level) hVar.s();
        if (level.hasSelfieLevel()) {
            this.f26757s.setVisibility(0);
            this.f26758t.setVisibility(0);
            this.f26757s.startAnimation(AnimationUtils.loadAnimation(getApplicationContext(), R.anim.blink));
            this.f26757s.setOnClickListener(this);
            this.f26758t.setOnClickListener(this);
        }
        this.f26759u.setText(level.endLevelQuote());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v0(View view) {
        startActivity(new Intent(getBaseContext(), (Class<?>) AdsActivity.class).putExtra("event_data", this.f26756r));
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w0() {
        this.P.A(this.O);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x0(View view) {
        l0();
        this.L.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y0(View view) {
        E0();
        this.L.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z0(View view) {
        C0();
        this.L.dismiss();
    }

    @Override // y8.w.g
    public void d(String str, int i10, Uri uri) {
        c0 c0Var = new c0(this, R.style.CustomDialog, true, getString(R.string.error_share_image), Integer.valueOf(R.dimen.size_text_button_green));
        c0Var.show();
        new Handler().postDelayed(new i(c0Var), AdLoader.RETRY_DELAY);
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 555) {
            startActivity(new Intent(getBaseContext(), (Class<?>) AdsActivity.class).putExtra("level", this.f26764z));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f26757s || view == this.f26758t) {
            startActivityForResult(new Intent(this, (Class<?>) EditFrameActivity.class).putExtra("frameLevel", this.f26764z), 555);
        } else {
            startActivity(new Intent(getBaseContext(), (Class<?>) AdsActivity.class).putExtra("level", this.f26764z));
            finish();
        }
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_quotes);
        j0();
        w wVar = new w(this);
        this.P = wVar;
        wVar.u(this);
        Intent intent = getIntent();
        k0();
        this.M = (ResultEventClue) intent.getParcelableExtra("event_clue");
        this.f26764z = intent.getIntExtra("level", 0);
        ResultEvents resultEvents = (ResultEvents) intent.getParcelableExtra("event_data");
        this.f26756r = resultEvents;
        ResultEventClue resultEventClue = this.M;
        if (resultEventClue != null) {
            this.f26754p = resultEventClue.ads_banner;
            this.f26755q = resultEventClue.ads_url;
            this.f26753o = resultEventClue.id;
        } else if (resultEvents != null) {
            this.f26754p = resultEvents.ads_banner;
            this.f26755q = resultEvents.ads_url;
            this.f26753o = resultEvents.id;
        }
        this.f26759u = (CustomTextView) findViewById(R.id.textViewQuotes);
        this.f26762x = (CustomButton) findViewById(R.id.buttonCongrats);
        this.f26763y = (CustomButton) findViewById(R.id.buttonMainLagi);
        this.G = (CustomButton) findViewById(R.id.buttonNext);
        this.H = (AppCompatImageView) findViewById(R.id.imageViewInstruction);
        this.E = (CustomImageView) findViewById(R.id.imageAds);
        this.F = findViewById(R.id.frameAds);
        this.C = (ConstraintLayout) findViewById(R.id.relativeLayoutMain);
        this.B = (ConstraintLayout) findViewById(R.id.linearLayoutMain);
        this.A = (RelativeLayout) findViewById(R.id.finishContainer);
        this.f26757s = (CustomTextView) findViewById(R.id.textViewNotifSelfie);
        this.f26758t = (CustomTextView) findViewById(R.id.textViewNotifSelfie1);
        this.D = (ConstraintLayout) findViewById(R.id.scoreContainer);
        this.f26760v = (CustomTextView) findViewById(R.id.buttonScoreShare);
        this.f26761w = (CustomTextView) findViewById(R.id.tvShareScoreMessage);
        this.J = (LinearLayout) findViewById(R.id.linearLayoutQuotes);
        this.I = (AppCompatImageView) findViewById(R.id.ivFinalScore);
        this.K = (ConstraintLayout) findViewById(R.id.containerScoreShare);
        if (this.M != null) {
            this.f26757s.setVisibility(8);
            this.f26758t.setVisibility(8);
            this.f26762x.setText(R.string.quote_congrats);
            this.f26759u.setText(this.M.message_event_end);
            this.f26763y.setOnClickListener(new View.OnClickListener() { // from class: g8.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f29951o.n0(view);
                }
            });
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: g8.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f29954o.o0(view);
                }
            };
            this.C.setOnClickListener(onClickListener);
            this.B.setOnClickListener(onClickListener);
        } else if (this.f26756r != null) {
            this.f26757s.setVisibility(8);
            this.f26758t.setVisibility(8);
            if (y.P(this, this.f26756r.id).equals(AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
                this.f26762x.setVisibility(8);
                this.f26763y.setVisibility(8);
            }
            if (this.f26756r.id.equals("3")) {
                this.f26763y.setVisibility(8);
            }
            this.f26762x.setText(R.string.quote_congrats);
            String strReplace = this.f26756r.message_event_end.replace("<n", "\n");
            if (y.P(this, this.f26756r.id).equals(AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
                this.A.setVisibility(8);
                this.G.setVisibility(0);
                v1.g.w(this).x(this.f26756r.welcome_image_url).z(true).j(b2.b.NONE).N(new a()).p(this.H);
            } else {
                this.f26759u.setText(strReplace + " ");
                this.G.setVisibility(8);
                this.H.setVisibility(8);
                this.A.setVisibility(0);
                Integer numY = y.y(this, this.f26753o);
                DecimalFormat decimalFormat = new DecimalFormat("#,##0");
                decimalFormat.setDecimalFormatSymbols(new DecimalFormatSymbols(Locale.ITALY));
                String str = decimalFormat.format(numY);
                this.D.setVisibility(0);
                this.I.setVisibility(0);
                this.f26761w.setVisibility(0);
                this.f26760v.setText(getResources().getString(R.string.label_final_score, str));
                this.K.setOnClickListener(new View.OnClickListener() { // from class: g8.t
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f29956o.p0(view);
                    }
                });
            }
            this.f26763y.setOnClickListener(new View.OnClickListener() { // from class: g8.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f29953o.q0(view);
                }
            });
            View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: g8.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f29955o.r0(view);
                }
            };
            this.J.setOnClickListener(new View.OnClickListener() { // from class: g8.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f29938o.s0(view);
                }
            });
            this.G.setOnClickListener(onClickListener2);
        } else {
            this.f26763y.setVisibility(8);
            this.f26762x.append(" " + this.f26764z);
            h.d(new Callable() { // from class: g8.j
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f29946a.t0();
                }
            }).A(new t1.f() { // from class: g8.k
                @Override // t1.f
                public final Object a(t1.h hVar) {
                    return this.f29947a.u0(hVar);
                }
            }, h.f35199k);
            this.C.setOnClickListener(this);
            this.B.setOnClickListener(this);
            this.G.setOnClickListener(new View.OnClickListener() { // from class: g8.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f29937o.v0(view);
                }
            });
        }
        if (TextUtils.isEmpty(this.f26754p) || TextUtils.isEmpty(this.f26755q)) {
            androidx.fragment.app.w wVarM = getSupportFragmentManager().m();
            wVarM.m(R.id.frameAds, k0.N("ca-app-pub-7269282889157841/4050539731"));
            wVarM.f();
        } else {
            this.F.setVisibility(8);
            this.E.setVisibility(0);
            v1.g.w(this).x(this.f26754p).z(true).j(b2.b.NONE).Q(R.drawable.ads_beriklan).N(new b()).p(this.E);
        }
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        Runnable runnable;
        super.onRequestPermissionsResult(i10, strArr, iArr);
        if (i10 == 55) {
            if (o.b(iArr) && (runnable = this.N) != null) {
                runnable.run();
            }
            this.N = null;
        }
    }

    @Override // y8.w.g
    public void y(int i10, Uri uri) {
        c0 c0Var = new c0(this, R.style.CustomDialog, true, getString(R.string.share_image_success), Integer.valueOf(R.dimen.size_text_button_green));
        c0Var.show();
        new Handler().postDelayed(new i(c0Var), AdLoader.RETRY_DELAY);
    }
}
