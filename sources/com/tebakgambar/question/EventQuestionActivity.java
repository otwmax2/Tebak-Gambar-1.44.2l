package com.tebakgambar.question;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;
import com.tebakgambar.Henson;
import com.tebakgambar.QuotesActivity;
import com.tebakgambar.R;
import com.tebakgambar.component.ClickableImageView;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomEditText;
import com.tebakgambar.component.CustomImageView;
import com.tebakgambar.component.CustomTextView;
import com.tebakgambar.model.Clue;
import com.tebakgambar.model.EventHint;
import com.tebakgambar.model.FreeAnswer;
import com.tebakgambar.model.Question;
import com.tebakgambar.model.RequestHeader;
import com.tebakgambar.model.ResultEventClue;
import com.tebakgambar.model.ResultEvents;
import com.tebakgambar.model.SoalClue;
import com.tebakgambar.model.SoalSogam;
import com.tebakgambar.model.constant.AdManagerConstant;
import com.tebakgambar.model.enums.QuestionType;
import com.tebakgambar.model.response.ApiResponse;
import com.tebakgambar.model.response.ApiResponse3;
import com.tebakgambar.network.TebakGambarApi;
import com.vungle.mediation.BuildConfig;
import com.vungle.warren.AdLoader;
import j8.c0;
import j8.f1;
import j8.h0;
import j8.k0;
import j8.z;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.Callable;
import o8.m0;
import y8.s;
import y8.w;
import y8.y;

/* JADX INFO: loaded from: classes2.dex */
public class EventQuestionActivity extends androidx.fragment.app.e implements View.OnClickListener, w.g {
    private static int F0 = 0;
    private static int G0 = 1200;
    CustomTextView A;
    z A0;
    CustomTextView B;
    private Uri B0;
    CustomTextView C;
    private Runnable C0;
    CustomTextView D;
    private w D0;
    CustomTextView E;
    private EventHint E0;
    CustomTextView F;
    CustomTextView G;
    LinearLayout H;
    LinearLayout I;
    LinearLayout J;
    LinearLayout K;
    RelativeLayout L;
    RelativeLayout M;
    RelativeLayout N;
    RelativeLayout O;
    RelativeLayout P;
    RelativeLayout Q;
    RelativeLayout R;
    View S;
    ConstraintLayout T;
    ScrollView U;
    View V;
    String W;
    String X;
    String Y;
    Question Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    Dialog f27015a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    String f27016b0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private u f27019e0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private k0 f27022h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private c0 f27023i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    InterstitialAd f27024j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    InterstitialAd f27025k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    RewardedAd f27026l0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    ResultEventClue f27032p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private FreeAnswer f27033q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    ResultEvents f27034q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    SoalClue f27036r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    ClickableImageView f27037s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    ArrayList<LinearLayout> f27038s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    ImageView f27039t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    ArrayList<ImageView> f27040t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    ImageView f27041u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    ArrayList<Integer> f27042u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    ProgressBar f27043v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    LinearLayout f27044v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    CustomImageView f27045w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    LinearLayout f27046w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    CustomButton f27047x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    LinearLayout f27048x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    CustomButton f27049y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    LinearLayout f27050y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    CustomEditText f27051z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    LinearLayout f27052z0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f27029o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f27031p = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    Integer f27035r = 0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    int f27017c0 = 0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    int f27018d0 = 0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    Boolean f27020f0 = Boolean.FALSE;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private long f27021g0 = 0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    boolean f27027m0 = false;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    int f27028n0 = 0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    int f27030o0 = 4;

    class a implements t2.f<String, l2.b> {

        /* JADX INFO: renamed from: com.tebakgambar.question.EventQuestionActivity$a$a, reason: collision with other inner class name */
        class ViewOnClickListenerC0132a implements View.OnClickListener {
            ViewOnClickListenerC0132a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse(EventQuestionActivity.this.X));
                EventQuestionActivity.this.startActivity(intent);
            }
        }

        a() {
        }

        @Override // t2.f
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public boolean b(Exception exc, String str, v2.j<l2.b> jVar, boolean z10) {
            EventQuestionActivity.this.V.setVisibility(0);
            EventQuestionActivity.this.f27045w.setVisibility(8);
            return false;
        }

        @Override // t2.f
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(l2.b bVar, String str, v2.j<l2.b> jVar, boolean z10, boolean z11) {
            EventQuestionActivity.this.f27045w.setOnClickListener(new ViewOnClickListenerC0132a());
            return false;
        }
    }

    class b implements Animation.AnimationListener {
        b() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            EventQuestionActivity.this.S.setVisibility(8);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            EventQuestionActivity.this.S.setVisibility(0);
        }
    }

    class c implements s.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Runnable f27056a;

        c(Runnable runnable) {
            this.f27056a = runnable;
        }

        @Override // y8.s.a
        public void a() {
            EventQuestionActivity.this.f27022h0.V(true);
        }

        @Override // y8.s.a
        public void b(Uri uri) {
            EventQuestionActivity.this.f27022h0.V(false);
            EventQuestionActivity.this.B0 = uri;
            Runnable runnable = this.f27056a;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    class d extends FullScreenContentCallback {
        d() {
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void b() {
            super.b();
            if (j8.b.l().q()) {
                EventQuestionActivity.this.K1(1);
            }
            j8.b.l().x(false);
            EventQuestionActivity.this.J1();
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

    class e extends InterstitialAdLoadCallback {

        class a extends FullScreenContentCallback {
            a() {
            }

            @Override // com.google.android.gms.ads.FullScreenContentCallback
            public void b() {
                EventQuestionActivity.this.I1();
                EventQuestionActivity.this.K1(1);
            }

            @Override // com.google.android.gms.ads.FullScreenContentCallback
            public void e() {
                super.e();
                j8.b.l().g();
            }
        }

        e() {
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void a(LoadAdError loadAdError) {
            super.a(loadAdError);
            EventQuestionActivity.this.f27024j0 = null;
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(InterstitialAd interstitialAd) {
            super.b(interstitialAd);
            EventQuestionActivity.this.f27024j0 = interstitialAd;
            interstitialAd.d(new a());
        }
    }

    class f extends InterstitialAdLoadCallback {

        class a extends FullScreenContentCallback {
            a() {
            }

            @Override // com.google.android.gms.ads.FullScreenContentCallback
            public void b() {
                EventQuestionActivity.this.F1();
                EventQuestionActivity.this.K1(2);
            }

            @Override // com.google.android.gms.ads.FullScreenContentCallback
            public void e() {
                EventQuestionActivity.this.f27025k0 = null;
            }
        }

        f() {
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void a(LoadAdError loadAdError) {
            super.a(loadAdError);
            EventQuestionActivity.this.f27025k0 = null;
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(InterstitialAd interstitialAd) {
            super.b(interstitialAd);
            EventQuestionActivity.this.f27025k0 = interstitialAd;
            interstitialAd.d(new a());
        }
    }

    class g extends RewardedAdLoadCallback {

        class a extends FullScreenContentCallback {
            a() {
            }

            @Override // com.google.android.gms.ads.FullScreenContentCallback
            public void b() {
                super.b();
                if (EventQuestionActivity.this.f27029o) {
                    EventQuestionActivity.this.K1(2);
                }
                EventQuestionActivity.this.f27029o = false;
            }

            @Override // com.google.android.gms.ads.FullScreenContentCallback
            public void e() {
                super.e();
                EventQuestionActivity eventQuestionActivity = EventQuestionActivity.this;
                eventQuestionActivity.f27026l0 = null;
                eventQuestionActivity.G1();
            }
        }

        g() {
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void a(LoadAdError loadAdError) {
            super.a(loadAdError);
            EventQuestionActivity.this.f27026l0 = null;
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(RewardedAd rewardedAd) {
            super.b(rewardedAd);
            EventQuestionActivity.this.f27026l0 = rewardedAd;
            rewardedAd.d(new a());
        }
    }

    class h implements wa.d<ApiResponse3<FreeAnswer>> {
        h() {
        }

        @Override // wa.d
        public void a(wa.b<ApiResponse3<FreeAnswer>> bVar, wa.l<ApiResponse3<FreeAnswer>> lVar) {
            if (lVar.f()) {
                EventQuestionActivity.this.f27033q = lVar.a().data;
                EventQuestionActivity eventQuestionActivity = EventQuestionActivity.this;
                eventQuestionActivity.b2(eventQuestionActivity.f27033q.imageUrl);
            }
        }

        @Override // wa.d
        public void b(wa.b<ApiResponse3<FreeAnswer>> bVar, Throwable th) {
            EventQuestionActivity eventQuestionActivity = EventQuestionActivity.this;
            eventQuestionActivity.Y1(eventQuestionActivity.getString(R.string.error_fetch_free_answer));
        }
    }

    class i implements wa.d<ApiResponse3<FreeAnswer>> {
        i() {
        }

        @Override // wa.d
        public void a(wa.b<ApiResponse3<FreeAnswer>> bVar, wa.l<ApiResponse3<FreeAnswer>> lVar) {
            if (!lVar.f()) {
                EventQuestionActivity eventQuestionActivity = EventQuestionActivity.this;
                eventQuestionActivity.Y1(eventQuestionActivity.getString(R.string.error_add_progress_free_answer));
                return;
            }
            EventQuestionActivity.this.f27033q = lVar.a().data;
            EventQuestionActivity eventQuestionActivity2 = EventQuestionActivity.this;
            eventQuestionActivity2.b2(eventQuestionActivity2.f27033q.imageUrl);
            EventQuestionActivity.this.W1();
        }

        @Override // wa.d
        public void b(wa.b<ApiResponse3<FreeAnswer>> bVar, Throwable th) {
        }
    }

    class j implements wa.d<ApiResponse3<FreeAnswer>> {
        j() {
        }

        @Override // wa.d
        public void a(wa.b<ApiResponse3<FreeAnswer>> bVar, wa.l<ApiResponse3<FreeAnswer>> lVar) {
            if (!lVar.f()) {
                EventQuestionActivity eventQuestionActivity = EventQuestionActivity.this;
                eventQuestionActivity.Y1(eventQuestionActivity.getString(R.string.error_use_free_answer));
                return;
            }
            EventQuestionActivity.this.X1();
            EventQuestionActivity.this.f27033q = lVar.a().data;
            EventQuestionActivity eventQuestionActivity2 = EventQuestionActivity.this;
            eventQuestionActivity2.b2(eventQuestionActivity2.f27033q.imageUrl);
            EventQuestionActivity eventQuestionActivity3 = EventQuestionActivity.this;
            eventQuestionActivity3.f27051z.setText(eventQuestionActivity3.Z.answer);
        }

        @Override // wa.d
        public void b(wa.b<ApiResponse3<FreeAnswer>> bVar, Throwable th) {
            EventQuestionActivity eventQuestionActivity = EventQuestionActivity.this;
            eventQuestionActivity.Y1(eventQuestionActivity.getString(R.string.error_use_free_answer));
        }
    }

    class k implements t2.f<String, l2.b> {
        k() {
        }

        @Override // t2.f
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public boolean b(Exception exc, String str, v2.j<l2.b> jVar, boolean z10) {
            EventQuestionActivity.this.f27037s.setVisibility(8);
            return false;
        }

        @Override // t2.f
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(l2.b bVar, String str, v2.j<l2.b> jVar, boolean z10, boolean z11) {
            EventQuestionActivity.this.f27037s.setVisibility(0);
            return false;
        }
    }

    class l implements wa.d<ApiResponse<ArrayList<SoalSogam>>> {

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventQuestionActivity.this.R0();
            }
        }

        class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventQuestionActivity.this.R0();
            }
        }

        l() {
        }

        @Override // wa.d
        public void a(wa.b<ApiResponse<ArrayList<SoalSogam>>> bVar, wa.l<ApiResponse<ArrayList<SoalSogam>>> lVar) {
            if (lVar.a() != null && lVar.a().data.isEmpty() && !EventQuestionActivity.this.Y.equals(AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
                y.w0(EventQuestionActivity.this.getBaseContext(), EventQuestionActivity.this.Y, "-1");
                if (TextUtils.isEmpty(EventQuestionActivity.this.f27034q0.message_event_end) || EventQuestionActivity.this.f27034q0.message_event_end.equals("-")) {
                    EventQuestionActivity.this.startActivity(new Intent(EventQuestionActivity.this.getBaseContext(), (Class<?>) QuotesActivity.class).putExtra("event_data", EventQuestionActivity.this.f27034q0));
                } else {
                    EventQuestionActivity.this.startActivity(new Intent(EventQuestionActivity.this.getBaseContext(), (Class<?>) QuotesActivity.class).putExtra("event_data", EventQuestionActivity.this.f27034q0));
                }
                EventQuestionActivity.this.finish();
                return;
            }
            try {
                SoalSogam soalSogam = lVar.a().data.get(0);
                EventQuestionActivity.this.H1(soalSogam.soal_image_url, false);
                EventQuestionActivity eventQuestionActivity = EventQuestionActivity.this;
                eventQuestionActivity.Z.id = soalSogam.id;
                eventQuestionActivity.f27016b0 = soalSogam.username;
                eventQuestionActivity.f27017c0 = soalSogam.default_point.intValue();
                EventQuestionActivity.this.f27020f0 = soalSogam.isRegularType();
                if (soalSogam.isRegularType().booleanValue()) {
                    EventQuestionActivity eventQuestionActivity2 = EventQuestionActivity.this;
                    Integer num = soalSogam.default_point;
                    eventQuestionActivity2.f27017c0 = num != null ? num.intValue() : 0;
                    EventQuestionActivity eventQuestionActivity3 = EventQuestionActivity.this;
                    eventQuestionActivity3.f27018d0 = 0;
                    eventQuestionActivity3.R.setVisibility(8);
                } else {
                    EventQuestionActivity eventQuestionActivity4 = EventQuestionActivity.this;
                    Integer num2 = soalSogam.duration;
                    eventQuestionActivity4.V0(num2 != null ? num2.intValue() : 0);
                }
                if (EventQuestionActivity.this.Y.equals(AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
                    EventQuestionActivity.this.Z.answer = soalSogam.jawaban1 + " " + soalSogam.jawaban2;
                    y.z0(EventQuestionActivity.this, soalSogam.id);
                    EventQuestionActivity.this.f27041u.setVisibility(0);
                    EventQuestionActivity eventQuestionActivity5 = EventQuestionActivity.this;
                    eventQuestionActivity5.f27041u.setOnClickListener(eventQuestionActivity5);
                    return;
                }
                EventQuestionActivity eventQuestionActivity6 = EventQuestionActivity.this;
                eventQuestionActivity6.Z.answer = soalSogam.jawaban;
                String str = soalSogam.id;
                y.x0(eventQuestionActivity6, eventQuestionActivity6.Y, str);
                EventQuestionActivity.this.M1();
                EventQuestionActivity eventQuestionActivity7 = EventQuestionActivity.this;
                eventQuestionActivity7.E0 = new EventHint(eventQuestionActivity7.Y, str, eventQuestionActivity7.Z.answer);
                if (!EventQuestionActivity.this.Y.equals("3")) {
                    EventQuestionActivity.this.f27041u.setVisibility(0);
                    EventQuestionActivity eventQuestionActivity8 = EventQuestionActivity.this;
                    eventQuestionActivity8.f27041u.setOnClickListener(eventQuestionActivity8);
                } else {
                    EventQuestionActivity.this.P.setVisibility(0);
                    EventQuestionActivity.this.A.setText(R.string.how_to_play);
                    EventQuestionActivity eventQuestionActivity9 = EventQuestionActivity.this;
                    eventQuestionActivity9.P.setOnClickListener(eventQuestionActivity9);
                }
            } catch (Exception unused) {
                EventQuestionActivity.this.L.setVisibility(8);
                EventQuestionActivity.this.M.setVisibility(0);
                EventQuestionActivity.this.U.setVisibility(8);
                EventQuestionActivity.this.f27049y.setOnClickListener(new a());
            }
        }

        @Override // wa.d
        public void b(wa.b<ApiResponse<ArrayList<SoalSogam>>> bVar, Throwable th) {
            EventQuestionActivity.this.L.setVisibility(8);
            EventQuestionActivity.this.M.setVisibility(0);
            EventQuestionActivity.this.U.setVisibility(8);
            EventQuestionActivity.this.f27049y.setOnClickListener(new b());
        }
    }

    class m implements t2.f<String, l2.b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f27072a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f27073b;

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                m mVar = m.this;
                EventQuestionActivity.this.H1(mVar.f27072a, mVar.f27073b);
            }
        }

        m(String str, boolean z10) {
            this.f27072a = str;
            this.f27073b = z10;
        }

        @Override // t2.f
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public boolean b(Exception exc, String str, v2.j<l2.b> jVar, boolean z10) {
            EventQuestionActivity.this.L.setVisibility(8);
            EventQuestionActivity.this.M.setVisibility(0);
            EventQuestionActivity.this.U.setVisibility(8);
            EventQuestionActivity.this.f27049y.setOnClickListener(new a());
            return false;
        }

        @Override // t2.f
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(l2.b bVar, String str, v2.j<l2.b> jVar, boolean z10, boolean z11) {
            EventQuestionActivity.this.f27021g0 = System.currentTimeMillis() - EventQuestionActivity.this.f27021g0;
            EventQuestionActivity.this.f27039t.getLayoutParams().height = ((int) y.l(EventQuestionActivity.this.getBaseContext(), Float.valueOf(y.u(EventQuestionActivity.this.getBaseContext(), Integer.valueOf(R.dimen.size_question_biasa_height))))) + (EventQuestionActivity.this.getBaseContext().getResources().getDisplayMetrics().densityDpi == 480 ? 100 : 0);
            EventQuestionActivity.this.f27047x.setEnabled(true);
            EventQuestionActivity.this.W0();
            EventQuestionActivity.this.L.setVisibility(8);
            EventQuestionActivity.this.M.setVisibility(8);
            EventQuestionActivity.this.U.setVisibility(0);
            if (EventQuestionActivity.this.f27027m0) {
                ArrayList<Integer> arrayList = new ArrayList(EventQuestionActivity.this.f27042u0);
                arrayList.remove(0);
                arrayList.remove(arrayList.size() - 1);
                EventQuestionActivity eventQuestionActivity = EventQuestionActivity.this;
                if (eventQuestionActivity.f27030o0 == 4) {
                    eventQuestionActivity.f27051z.setVisibility(8);
                    EventQuestionActivity.this.f27047x.setVisibility(8);
                    EventQuestionActivity.this.E.setVisibility(0);
                } else {
                    eventQuestionActivity.f27051z.setVisibility(0);
                    EventQuestionActivity.this.f27047x.setVisibility(0);
                    EventQuestionActivity.this.E.setVisibility(8);
                }
                if (this.f27073b) {
                    for (Integer num : arrayList) {
                        EventQuestionActivity.this.f27038s0.get(num.intValue()).setVisibility(0);
                        EventQuestionActivity.this.f27038s0.get(num.intValue()).setBackgroundColor(Color.parseColor("#" + EventQuestionActivity.this.f27032p0.color_clue.get(num.intValue())));
                        v1.g.w(EventQuestionActivity.this).x(EventQuestionActivity.this.f27032p0.image_clue.get(num.intValue())).z(true).j(b2.b.NONE).Q(R.drawable.ic_tebakgambar_logo).p(EventQuestionActivity.this.f27040t0.get(num.intValue()));
                    }
                } else {
                    EventQuestionActivity.this.J.setVisibility(0);
                    EventQuestionActivity.this.f27051z.setVisibility(0);
                    EventQuestionActivity.this.f27051z.requestFocus();
                    EventQuestionActivity.this.f27047x.setVisibility(0);
                    EventQuestionActivity.this.E.setVisibility(8);
                    EventQuestionActivity.this.f27046w0.setVisibility(4);
                    EventQuestionActivity.this.f27048x0.setVisibility(4);
                    EventQuestionActivity.this.f27050y0.setVisibility(4);
                    EventQuestionActivity.this.f27052z0.setVisibility(4);
                }
                EventQuestionActivity.this.O.setVisibility(8);
                EventQuestionActivity eventQuestionActivity2 = EventQuestionActivity.this;
                eventQuestionActivity2.f27046w0.setOnClickListener(eventQuestionActivity2);
                EventQuestionActivity eventQuestionActivity3 = EventQuestionActivity.this;
                eventQuestionActivity3.f27048x0.setOnClickListener(eventQuestionActivity3);
                EventQuestionActivity eventQuestionActivity4 = EventQuestionActivity.this;
                eventQuestionActivity4.f27050y0.setOnClickListener(eventQuestionActivity4);
                EventQuestionActivity eventQuestionActivity5 = EventQuestionActivity.this;
                eventQuestionActivity5.f27052z0.setOnClickListener(eventQuestionActivity5);
                EventQuestionActivity.this.f27044v0.setVisibility(0);
                EventQuestionActivity.this.f27044v0.getLayoutParams().height = EventQuestionActivity.this.f27039t.getLayoutParams().height;
            }
            return false;
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ Integer f27076o;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                EventQuestionActivity.this.f27015a0.dismiss();
                EventQuestionActivity.this.f27047x.setEnabled(true);
            }
        }

        n(Integer num) {
            this.f27076o = num;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f27076o.intValue() == R.drawable.ic_sigam_gameover_salah || this.f27076o.intValue() == R.drawable.ic_sigam_gameover_waktuhabis) {
                y.Z(EventQuestionActivity.this.getBaseContext(), Integer.valueOf(R.raw.sound_gameover));
            } else if (this.f27076o.intValue() == R.drawable.ic_sigam_waktu_habis || this.f27076o.intValue() == R.drawable.ic_sigam_salah || this.f27076o.intValue() == R.drawable.ic_sigam_hampir_benar) {
                y.Z(EventQuestionActivity.this.getBaseContext(), Integer.valueOf(R.raw.sound_salah));
            } else if (this.f27076o.intValue() == R.drawable.ic_sigam_benar) {
                y.Z(EventQuestionActivity.this.getBaseContext(), Integer.valueOf(R.raw.sound_benar));
            } else if (this.f27076o.intValue() == R.drawable.ic_sigam_benar_checkpoint || this.f27076o.intValue() == R.drawable.ic_sigam_bonus_nyawa) {
                y.Z(EventQuestionActivity.this.getBaseContext(), Integer.valueOf(R.raw.sound_checkpoint));
            } else if (this.f27076o.intValue() == R.drawable.ic_sigam_exra_hint) {
                y.Z(EventQuestionActivity.this.getBaseContext(), Integer.valueOf(R.raw.sound_extra_hint));
            }
            View viewInflate = ((LayoutInflater) EventQuestionActivity.this.getBaseContext().getSystemService("layout_inflater")).inflate(R.layout.layout_toast_custom, (ViewGroup) null);
            try {
                v1.g.w(EventQuestionActivity.this).w(this.f27076o).z(true).j(b2.b.NONE).p((ImageView) viewInflate.findViewById(R.id.imageViewIndicator));
                EventQuestionActivity.this.f27015a0.setContentView(viewInflate);
                EventQuestionActivity.this.f27015a0.show();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            new Handler().postDelayed(new a(), 1200L);
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) EventQuestionActivity.this.J.getLayoutParams();
            layoutParams.setMargins(0, layoutParams.topMargin, 0, 0);
            EventQuestionActivity.this.J.setLayoutParams(layoutParams);
            EventQuestionActivity.this.f27045w.setVisibility(8);
            EventQuestionActivity.this.V.setVisibility(8);
        }
    }

    class p implements CustomEditText.a {
        p() {
        }

        @Override // com.tebakgambar.component.CustomEditText.a
        public void a(CustomEditText customEditText) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) EventQuestionActivity.this.J.getLayoutParams();
            layoutParams.setMargins(0, layoutParams.topMargin, 0, (int) EventQuestionActivity.this.getResources().getDimension(R.dimen.size_admob_height));
            EventQuestionActivity.this.J.setLayoutParams(layoutParams);
            if (TextUtils.isEmpty(EventQuestionActivity.this.W) || TextUtils.isEmpty(EventQuestionActivity.this.X)) {
                EventQuestionActivity.this.V.setVisibility(0);
            } else {
                EventQuestionActivity.this.f27045w.setVisibility(0);
            }
        }
    }

    class q extends androidx.activity.g {
        q(boolean z10) {
            super(z10);
        }

        @Override // androidx.activity.g
        public void b() {
            EventQuestionActivity eventQuestionActivity = EventQuestionActivity.this;
            if (eventQuestionActivity.f27036r0 == null) {
                if (!eventQuestionActivity.Y.equals("3")) {
                    EventQuestionActivity.this.S0();
                }
                EventQuestionActivity.this.finish();
            } else if (eventQuestionActivity.f27030o0 == 4) {
                eventQuestionActivity.S0();
                EventQuestionActivity.this.finish();
            } else {
                eventQuestionActivity.f27030o0 = 4;
                eventQuestionActivity.f27051z.setText((CharSequence) null);
                EventQuestionActivity.this.L0();
            }
        }
    }

    class r implements z.c {
        r() {
        }

        @Override // j8.z.c
        public void a(int i10) {
            EventQuestionActivity.this.A0.dismiss();
            if (i10 == 0) {
                EventQuestionActivity.this.f27046w0.performClick();
                return;
            }
            if (i10 == 1) {
                EventQuestionActivity.this.f27048x0.performClick();
                return;
            }
            if (i10 == 2) {
                EventQuestionActivity.this.f27050y0.performClick();
            } else if (i10 == 3) {
                EventQuestionActivity.this.f27052z0.performClick();
            } else {
                y.Z(EventQuestionActivity.this.getBaseContext(), Integer.valueOf(R.raw.sound_click));
                EventQuestionActivity.this.A0.dismiss();
            }
        }
    }

    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                EventQuestionActivity.this.f27015a0.cancel();
            } catch (Exception unused) {
            }
            EventQuestionActivity eventQuestionActivity = EventQuestionActivity.this;
            if (eventQuestionActivity.f27036r0 != null) {
                eventQuestionActivity.f27030o0 = 4;
                eventQuestionActivity.L0();
            } else {
                eventQuestionActivity.R0();
            }
            EventQuestionActivity.this.f27051z.setText((CharSequence) null);
        }
    }

    static class t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f27084a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f27085b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Runnable f27086c;

        private t(int i10, int i11) {
            this.f27084a = i10;
            this.f27085b = i11;
        }

        static t a(int i10) {
            int i11 = R.raw.sound_berhasil_nonton_iklan_2x;
            int i12 = 0;
            if (i10 == 1) {
                i12 = R.drawable.pop_up_mendapat_1_kunci_jawaban;
            } else if (i10 != 2) {
                i11 = 0;
            } else {
                i12 = R.drawable.pop_up_kunci_jawaban_terpakai;
            }
            return new t(i12, i11);
        }
    }

    class u extends CountDownTimer {
        u(long j10, long j11) {
            super(j10, j11);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            EventQuestionActivity.this.G.setText(AppEventsConstants.EVENT_PARAM_VALUE_NO);
            EventQuestionActivity.this.G.setTextColor(Color.parseColor("#000000"));
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j10) {
            long j11 = j10 / 1000;
            y.Z(EventQuestionActivity.this.getBaseContext(), Integer.valueOf(R.raw.sound_count_5s));
            if (j11 > 5 || j11 <= 0) {
                EventQuestionActivity.this.G.setTextColor(Color.parseColor("#000000"));
            } else {
                EventQuestionActivity.this.G.setTextColor(Color.parseColor("#E44144"));
            }
            EventQuestionActivity eventQuestionActivity = EventQuestionActivity.this;
            eventQuestionActivity.f27018d0 = (int) j11;
            eventQuestionActivity.G.setText(String.valueOf(j11));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A1(View view) {
        L1();
        this.f27015a0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B1() {
        this.D0.B(this.B0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object C1(Task task) throws Exception {
        TebakGambarApi.b().useFreeAnswer(RequestHeader.create(((g5.u) task.p()).c())).v3(new j());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D1(final Task task) {
        if (!task.t() || task.p() == null || ((g5.u) task.p()).c() == null) {
            return;
        }
        t1.h.d(new Callable() { // from class: t8.v
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f35510a.C1(task);
            }
        });
    }

    private void E1() {
        I1();
        J1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F1() {
        if (this.f27025k0 != null) {
            return;
        }
        j8.b.l().w(AdManagerConstant.FREE_ANSWER_INTERSTITIAL_AD_UNIT_ID, new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G1() {
        if (this.f27026l0 != null) {
            return;
        }
        RewardedAd.c(getApplication().getApplicationContext(), AdManagerConstant.FREE_ANSWER_REWARDED_AD_UNIT_ID, new AdRequest.Builder().c(), new g());
    }

    private void H0() {
        g5.s sVarB = FirebaseAuth.getInstance().b();
        if (sVarB == null) {
            return;
        }
        sVarB.W3(true).c(new OnCompleteListener() { // from class: t8.i
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void a(Task task) {
                this.f35469a.b1(task);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H1(String str, boolean z10) {
        this.L.setVisibility(0);
        this.M.setVisibility(8);
        this.U.setVisibility(8);
        try {
            v1.g.w(this).x(str).z(true).j(b2.b.NONE).Q(R.drawable.ic_transparent).N(new m(str, z10)).p(this.f27039t);
        } catch (Exception unused) {
        }
    }

    private void I0() {
        u uVar;
        if (this.R.getVisibility() != 0 || (uVar = this.f27019e0) == null) {
            return;
        }
        uVar.cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I1() {
        j8.b.l().w(AdManagerConstant.QUESTION_INTERSTITIAL_AD_UNIT_ID, new e());
    }

    private void J0() {
        String str;
        try {
            this.f27015a0.dismiss();
            y.Z(getBaseContext(), Integer.valueOf(R.raw.sound_click));
            ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(this.f27051z.getWindowToken(), 0);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.J.getLayoutParams();
            layoutParams.setMargins(0, layoutParams.topMargin, 0, (int) getResources().getDimension(R.dimen.size_admob_height));
            this.J.setLayoutParams(layoutParams);
            if (TextUtils.isEmpty(this.W) || TextUtils.isEmpty(this.X)) {
                this.V.setVisibility(0);
            } else {
                this.f27045w.setVisibility(0);
            }
            String strReplace = this.f27051z.getText().toString().replace("  ", " ");
            if (K0(strReplace) == -1) {
                Q1(Integer.valueOf(R.drawable.ic_sigam_salah));
                return;
            }
            if (K0(strReplace) == 0) {
                Q1(Integer.valueOf(R.drawable.ic_sigam_hampir_benar));
                return;
            }
            if (K0(strReplace) == 1) {
                if (this.f27036r0 != null) {
                    y.g0(this, this.f27032p0.id, this.f27042u0.get(0) + BuildConfig.FLAVOR, this.f27030o0 + BuildConfig.FLAVOR);
                } else if (this.Y.equals(AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
                    if (y.Q(this).equals(AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
                        str = this.Z.id;
                    } else {
                        str = y.Q(this) + "," + this.Z.id;
                    }
                    y.y0(this, str);
                } else {
                    y.w0(this, this.Y, this.Z.id);
                }
                new Handler().postDelayed(new s(), 1000L);
                Q1(Integer.valueOf(R.drawable.ic_sigam_benar));
                I0();
                CustomTextView customTextView = this.F;
                int i10 = this.f27031p;
                customTextView.i(i10, this.f27017c0 + i10 + this.f27018d0);
                int i11 = this.f27031p + this.f27017c0 + this.f27018d0;
                this.f27031p = i11;
                y.h0(this, this.Y, Integer.valueOf(i11));
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                alphaAnimation.setDuration(1000L);
                alphaAnimation.setInterpolator(new LinearInterpolator());
                alphaAnimation.setRepeatMode(2);
                alphaAnimation.setRepeatCount(3);
                alphaAnimation.setAnimationListener(new b());
                this.S.startAnimation(alphaAnimation);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J1() {
        j8.b.l().v(new d());
    }

    private int K0(String str) {
        Question question = this.Z;
        question.answer = question.answer.replaceAll("\\s+", " ").trim();
        String strTrim = str.trim();
        if (strTrim.equalsIgnoreCase(this.Z.answer)) {
            return 1;
        }
        for (String str2 : this.Z.answer.split(" ")) {
            if (!strTrim.contains(str2)) {
                if (!strTrim.contains(str2 + " ") && y8.j.a(this.Z.answer, strTrim) != 2) {
                }
            }
            return 0;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K1(int i10) {
        if (i10 == 1) {
            this.E0.addChance(1);
            a2();
        } else if (i10 == 2) {
            H0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L0() {
        if (this.f27032p0 == null) {
            finish();
        }
        try {
            this.f27042u0 = y.x(this, this.f27032p0.id);
        } catch (Exception unused) {
            this.f27042u0 = new ArrayList<>();
        }
        this.P.setVisibility(0);
        this.A.setText(" clue kamu ");
        this.P.setOnClickListener(this);
        if (this.f27042u0.size() == 0) {
            startActivity(new Intent(getBaseContext(), (Class<?>) QuotesActivity.class).putExtra("event_clue", this.f27032p0));
            finish();
            return;
        }
        if (this.f27042u0.size() > 2) {
            SoalClue soalClue = this.f27032p0.soal_clue.get(this.f27042u0.get(0).intValue());
            this.f27036r0 = soalClue;
            ArrayList<Clue> arrayList = soalClue.clue;
            H1(arrayList.get(arrayList.size() - 1).soal_image_url, true);
            this.f27051z.setVisibility(8);
            this.f27047x.setVisibility(8);
            this.E.setVisibility(0);
            return;
        }
        this.f27036r0 = this.f27032p0.soal_clue.get(this.f27042u0.get(0).intValue());
        Question question = new Question();
        this.Z = question;
        ArrayList<Clue> arrayList2 = this.f27036r0.clue;
        question.answer = arrayList2.get(arrayList2.size() - 1).jawaban;
        ArrayList<Clue> arrayList3 = this.f27036r0.clue;
        H1(arrayList3.get(arrayList3.size() - 1).soal_image_url, false);
        this.f27051z.setVisibility(0);
        this.f27047x.setVisibility(0);
        this.E.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L1() {
        try {
            N0(false, new Runnable() { // from class: t8.q
                @Override // java.lang.Runnable
                public final void run() {
                    this.f35493o.h1();
                }
            });
        } catch (y8.n e10) {
            e10.printStackTrace();
            this.C0 = new Runnable() { // from class: t8.n
                @Override // java.lang.Runnable
                public final void run() {
                    this.f35484o.L1();
                }
            };
            androidx.core.app.b.t(this, e10.a(), 55);
        }
    }

    private void M0() {
        Intent intent = getIntent();
        if (this.f27027m0) {
            this.H.setVisibility(8);
            try {
                ResultEventClue resultEventClue = (ResultEventClue) intent.getExtras().getParcelable("event_clue");
                this.f27032p0 = resultEventClue;
                this.X = resultEventClue.ads_url;
                this.W = resultEventClue.ads_banner;
            } catch (Exception unused) {
            }
            ArrayList<LinearLayout> arrayList = new ArrayList<>();
            this.f27038s0 = arrayList;
            arrayList.add(this.f27046w0);
            this.f27038s0.add(this.f27048x0);
            this.f27038s0.add(this.f27050y0);
            this.f27038s0.add(this.f27052z0);
            ArrayList<ImageView> arrayList2 = new ArrayList<>();
            this.f27040t0 = arrayList2;
            arrayList2.add((ImageView) findViewById(R.id.imageClue1));
            this.f27040t0.add((ImageView) findViewById(R.id.imageClue2));
            this.f27040t0.add((ImageView) findViewById(R.id.imageClue3));
            this.f27040t0.add((ImageView) findViewById(R.id.imageClue4));
        } else {
            this.H.setBackgroundColor(android.R.color.transparent);
        }
        androidx.fragment.app.w wVarM = getSupportFragmentManager().m();
        wVarM.m(R.id.frameAds, new k0());
        wVarM.f();
        if (TextUtils.isEmpty(this.W) || TextUtils.isEmpty(this.X)) {
            this.V.setVisibility(0);
            this.f27045w.setVisibility(8);
        } else {
            this.V.setVisibility(8);
            this.f27045w.setVisibility(0);
            try {
                v1.g.w(this).x(this.W).z(true).j(b2.b.NONE).Q(R.drawable.ads_beriklan).N(new a()).p(this.f27045w);
            } catch (Exception unused2) {
            }
        }
        this.F.setText(String.valueOf(this.f27031p));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M1() {
        this.O.setVisibility(0);
        this.N.setVisibility(0);
        this.O.setOnClickListener(new View.OnClickListener() { // from class: t8.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f35457o.i1(view);
            }
        });
    }

    private void N0(boolean z10, Runnable runnable) throws y8.n {
        k0 k0Var = (k0) getSupportFragmentManager().h0(R.id.frameAds);
        this.f27022h0 = k0Var;
        if (k0Var == null) {
            androidx.fragment.app.w wVarM = getSupportFragmentManager().m();
            wVarM.m(R.id.frameAds, new k0());
            wVarM.f();
            this.f27022h0 = (k0) getSupportFragmentManager().h0(R.id.frameAds);
        }
        y8.s.d(z10, this, new c(runnable), new t1.e().d());
    }

    private void N1() {
        this.f27037s.setOnClickListener(y8.m.b(new View.OnClickListener() { // from class: t8.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f35441o.j1(view);
            }
        }));
    }

    private void O0() {
        g5.s sVarB = FirebaseAuth.getInstance().b();
        if (sVarB == null) {
            return;
        }
        sVarB.W3(true).c(new OnCompleteListener() { // from class: t8.j
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void a(Task task) {
                this.f35472a.d1(task);
            }
        });
    }

    private void O1() {
        if (j8.b.o(this.f27026l0)) {
            this.f27026l0.e(this, new OnUserEarnedRewardListener() { // from class: t8.h
                @Override // com.google.android.gms.ads.OnUserEarnedRewardListener
                public final void a(RewardItem rewardItem) {
                    this.f35466a.k1(rewardItem);
                }
            });
        } else if (j8.b.n(this.f27025k0)) {
            this.f27025k0.f(this);
        } else {
            Toast.makeText(this, getString(R.string.video_ad_not_available), 0).show();
        }
    }

    private void P1(final t tVar) {
        if (tVar == null) {
            return;
        }
        Dialog dialog = this.f27015a0;
        if (dialog == null) {
            Dialog dialog2 = new Dialog(this);
            this.f27015a0 = dialog2;
            if (dialog2.getWindow() != null) {
                this.f27015a0.getWindow().requestFeature(1);
                this.f27015a0.getWindow().clearFlags(2);
                this.f27015a0.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            }
        } else if (dialog.isShowing()) {
            this.f27015a0.dismiss();
        }
        this.f27047x.setEnabled(false);
        new Handler().postDelayed(new Runnable() { // from class: com.tebakgambar.question.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f27107o.m1(tVar);
            }
        }, F0);
    }

    private String Q0() {
        ResultEventClue resultEventClue = this.f27032p0;
        if (resultEventClue != null && resultEventClue.extra_hashtag != null) {
            return this.f27032p0.extra_hashtag + " ";
        }
        ResultEvents resultEvents = this.f27034q0;
        if (resultEvents == null || resultEvents.extra_hashtag == null) {
            return BuildConfig.FLAVOR;
        }
        return this.f27034q0.extra_hashtag + " ";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R0() {
        t1.h.d(new Callable() { // from class: t8.s
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f35499a.e1();
            }
        });
    }

    private void R1() {
        if (this.E0.isNoHintAvailable()) {
            new f1(this).k(getString(R.string.extra_hint_message)).d(getString(R.string.extra_hint_watch_video), new DialogInterface.OnClickListener() { // from class: t8.a
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    this.f35437o.p1(dialogInterface, i10);
                }
            }).e(getString(R.string.extra_hint_selfie), new DialogInterface.OnClickListener() { // from class: t8.y
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    this.f35520o.q1(dialogInterface, i10);
                }
            }).f(getString(R.string.close), new DialogInterface.OnClickListener() { // from class: t8.z
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    dialogInterface.dismiss();
                }
            }).show();
        } else {
            new h0(this).n(getString(R.string.extra_hint_message)).e(getString(R.string.extra_hint_watch_video), new DialogInterface.OnClickListener() { // from class: t8.l
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    this.f35478o.s1(dialogInterface, i10);
                }
            }).f(getString(R.string.extra_hint_selfie), new DialogInterface.OnClickListener() { // from class: t8.w
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    this.f35514o.u1(dialogInterface, i10);
                }
            }).g(getString(R.string.button_show_hint), new DialogInterface.OnClickListener() { // from class: t8.x
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    this.f35517o.n1(dialogInterface, i10);
                }
            }).h(getString(R.string.close), new DialogInterface.OnClickListener() { // from class: t8.a0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    dialogInterface.dismiss();
                }
            }).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S0() {
        Intent intentBuild = Henson.with(this).e().build();
        intentBuild.setFlags(603979776);
        startActivity(intentBuild);
    }

    private void S1() {
        String strCurrentHint = this.E0.currentHint();
        if (this.E0.isNoHintAvailable()) {
            strCurrentHint = getString(R.string.label_hint_instruction);
        }
        U1(strCurrentHint);
    }

    private void T0() {
        getOnBackPressedDispatcher().b(new q(true));
    }

    private boolean T1() {
        if (j8.b.l().p()) {
            j8.b.l().A(this);
            return true;
        }
        if (j8.b.n(this.f27024j0)) {
            this.f27024j0.f(this);
            return true;
        }
        Toast.makeText(this, getString(R.string.video_ad_not_available), 0).show();
        return false;
    }

    private void U0() {
        int i10 = getResources().getDisplayMetrics().densityDpi;
        Bitmap bitmap = ((BitmapDrawable) getBaseContext().getResources().getDrawable(R.drawable.ic_clock)).getBitmap();
        Context baseContext = getBaseContext();
        Float fValueOf = Float.valueOf(20.0f);
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) y.l(baseContext, fValueOf), (int) y.l(getBaseContext(), fValueOf), true);
        bitmapCreateScaledBitmap.setDensity(i10);
        this.G.setCompoundDrawablesWithIntrinsicBounds(new BitmapDrawable(getResources(), bitmapCreateScaledBitmap), (Drawable) null, (Drawable) null, (Drawable) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V0(int i10) {
        u uVar = this.f27019e0;
        if (uVar != null) {
            uVar.cancel();
        }
        this.R.setVisibility(0);
        u uVar2 = new u(i10 * 1000, 1000L);
        this.f27019e0 = uVar2;
        uVar2.start();
    }

    private void V1() {
        Dialog dialog = this.f27015a0;
        if (dialog == null) {
            Dialog dialog2 = new Dialog(this);
            this.f27015a0 = dialog2;
            if (dialog2.getWindow() != null) {
                this.f27015a0.getWindow().requestFeature(1);
                this.f27015a0.getWindow().clearFlags(2);
                this.f27015a0.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            }
        } else if (dialog.isShowing()) {
            this.f27015a0.dismiss();
        }
        m0 m0VarU0 = m0.u0(LayoutInflater.from(this), null, false);
        m0VarU0.P.setOnClickListener(new View.OnClickListener() { // from class: t8.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f35447o.x1(view);
            }
        });
        m0VarU0.Q.setOnClickListener(new View.OnClickListener() { // from class: t8.d0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f35453o.y1(view);
            }
        });
        m0VarU0.R.setOnClickListener(new View.OnClickListener() { // from class: t8.c0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f35448o.z1(view);
            }
        });
        m0VarU0.S.setOnClickListener(new View.OnClickListener() { // from class: t8.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f35460o.A1(view);
            }
        });
        this.f27015a0.setContentView(m0VarU0.S());
        this.f27015a0.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W0() {
        this.T.setOnClickListener(new View.OnClickListener() { // from class: t8.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f35463o.f1(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W1() {
        P1(t.a(1));
    }

    private void X0() {
        Dialog dialog = new Dialog(this);
        this.f27015a0 = dialog;
        dialog.getWindow().requestFeature(1);
        this.f27015a0.getWindow().clearFlags(2);
        this.f27015a0.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        this.f27039t = (ImageView) findViewById(R.id.imageViewSoal);
        this.f27045w = (CustomImageView) findViewById(R.id.imageAds);
        this.V = findViewById(R.id.frameAds);
        this.T = (ConstraintLayout) findViewById(R.id.imageViewShare);
        this.f27041u = (ImageView) findViewById(R.id.imageViewSkip);
        this.f27047x = (CustomButton) findViewById(R.id.buttonCek);
        this.f27049y = (CustomButton) findViewById(R.id.buttonTryAgain);
        this.H = (LinearLayout) findViewById(R.id.linearLayoutWrapperHeart);
        this.I = (LinearLayout) findViewById(R.id.linearLayoutWrapperJawaban);
        this.J = (LinearLayout) findViewById(R.id.linearLayoutJawaban);
        this.f27051z = (CustomEditText) findViewById(R.id.editTextSoal);
        this.L = (RelativeLayout) findViewById(R.id.relativeLayoutLoading);
        this.M = (RelativeLayout) findViewById(R.id.relativeLayoutFailed);
        this.U = (ScrollView) findViewById(R.id.scrollViewWrapperSoal);
        this.N = (RelativeLayout) findViewById(R.id.relativeLayoutQuestionLabel);
        this.O = (RelativeLayout) findViewById(R.id.relativeLayoutWrapperHint);
        this.P = (RelativeLayout) findViewById(R.id.relativeLayoutClueKamu);
        this.Q = (RelativeLayout) findViewById(R.id.relativeLayoutTop);
        this.A = (CustomTextView) findViewById(R.id.textViewClueKamu);
        this.B = (CustomTextView) findViewById(R.id.textViewFrom);
        this.C = (CustomTextView) findViewById(R.id.textViewScore);
        this.D = (CustomTextView) findViewById(R.id.textViewFromUsername);
        this.E = (CustomTextView) findViewById(R.id.textViewInstruksiClue);
        this.K = (LinearLayout) findViewById(R.id.relativeLayoutFrom);
        this.f27043v = (ProgressBar) findViewById(R.id.progressbarBonusTime);
        this.f27037s = (ClickableImageView) findViewById(R.id.imageViewFreeAnswer);
        this.F = (CustomTextView) findViewById(R.id.tvScore);
        this.G = (CustomTextView) findViewById(R.id.textViewTimer);
        this.R = (RelativeLayout) findViewById(R.id.relativeLayoutWrapperTimer);
        this.S = findViewById(R.id.viewScoreBlink);
        this.f27044v0 = (LinearLayout) findViewById(R.id.linearLayoutClue);
        this.f27046w0 = (LinearLayout) findViewById(R.id.linearLayoutClue1);
        this.f27048x0 = (LinearLayout) findViewById(R.id.linearLayoutClue2);
        this.f27050y0 = (LinearLayout) findViewById(R.id.linearLayoutClue3);
        this.f27052z0 = (LinearLayout) findViewById(R.id.linearLayoutClue4);
        this.f27051z.setOnClickListener(new o());
        this.f27051z.setBackPressedListener(new p());
        this.Z = new Question();
        this.f27047x.setOnClickListener(this);
        N1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y0() {
        if (!y8.a.d(this)) {
            c0 c0Var = new c0(this, R.style.CustomDialog, true, getString(R.string.instagram_not_found), Integer.valueOf(R.dimen.size_text));
            this.f27023i0 = c0Var;
            c0Var.show();
        } else {
            try {
                N0(true, new Runnable() { // from class: t8.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f35490o.g1();
                    }
                });
            } catch (y8.n e10) {
                e10.printStackTrace();
                this.C0 = new Runnable() { // from class: t8.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f35496o.Y0();
                    }
                };
                androidx.core.app.b.t(this, e10.a(), 55);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y1(String str) {
        Toast.makeText(getApplicationContext(), str, 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z1() {
        try {
            N0(false, new Runnable() { // from class: t8.m
                @Override // java.lang.Runnable
                public final void run() {
                    this.f35481o.B1();
                }
            });
        } catch (y8.n e10) {
            e10.printStackTrace();
            this.C0 = new Runnable() { // from class: t8.o
                @Override // java.lang.Runnable
                public final void run() {
                    this.f35487o.Z1();
                }
            };
            androidx.core.app.b.t(this, e10.a(), 55);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a1(Task task) throws Exception {
        TebakGambarApi.b().addProgress(RequestHeader.create(((g5.u) task.p()).c())).v3(new i());
        return null;
    }

    private void a2() {
        if (this.E0.isHintChanceEmpty()) {
            R1();
        } else {
            this.E0.addHint();
            S1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b1(final Task task) {
        if (!task.t() || task.p() == null || ((g5.u) task.p()).c() == null) {
            return;
        }
        t1.h.d(new Callable() { // from class: t8.t
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f35502a.a1(task);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b2(String str) {
        Context contextP0 = P0();
        if (contextP0 == null) {
            return;
        }
        v1.g.v(contextP0).x(str).N(new k()).j(b2.b.ALL).J(R.drawable.ic_daily_quiz_button).p(this.f27037s);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object c1(Task task) throws Exception {
        TebakGambarApi.b().getFreeAnswer(QuestionType.EVENT.toString(), RequestHeader.create(((g5.u) task.p()).c())).v3(new h());
        return null;
    }

    private void c2() {
        g5.s sVarB = FirebaseAuth.getInstance().b();
        if (sVarB == null) {
            return;
        }
        sVarB.W3(true).c(new OnCompleteListener() { // from class: t8.k
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void a(Task task) {
                this.f35475a.D1(task);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d1(final Task task) {
        if (!task.t() || task.p() == null || ((g5.u) task.p()).c() == null) {
            return;
        }
        t1.h.d(new Callable() { // from class: t8.u
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f35506a.c1(task);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object e1() throws Exception {
        HashMap map = new HashMap();
        if (this.f27035r.intValue() > 0) {
            map.put("random", this.f27035r);
        }
        TebakGambarApi.b().getEventSoal(this.Y, this.Y.equals(AppEventsConstants.EVENT_PARAM_VALUE_NO) ? y.Q(this) : y.O(this, this.Y), map).v3(new l());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f1(View view) {
        V1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g1() {
        this.D0.y(this.B0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h1() {
        this.D0.A(this.B0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i1(View view) {
        S1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j1(View view) {
        Context contextP0 = P0();
        if (contextP0 == null) {
            return;
        }
        if (!y.W(contextP0)) {
            Y1(getString(R.string.error_no_internet_2));
        } else if (this.f27033q.qty >= 1) {
            c2();
        } else {
            O1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k1(RewardItem rewardItem) {
        this.f27029o = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l1(t tVar) {
        this.f27015a0.dismiss();
        this.f27047x.setEnabled(true);
        Runnable runnable = tVar.f27086c;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m1(final t tVar) {
        y.Z(getBaseContext(), Integer.valueOf(tVar.f27085b));
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.layout_toast_custom, (ViewGroup) null);
        v1.g.v(P0()).w(Integer.valueOf(tVar.f27084a)).z(true).j(b2.b.NONE).p((ImageView) viewInflate.findViewById(R.id.imageViewIndicator));
        this.f27015a0.setContentView(viewInflate);
        if (isFinishing()) {
            return;
        }
        this.f27015a0.show();
        new Handler().postDelayed(new Runnable() { // from class: com.tebakgambar.question.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f27105o.l1(tVar);
            }
        }, G0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n1(DialogInterface dialogInterface, int i10) {
        dialogInterface.dismiss();
        S1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p1(DialogInterface dialogInterface, int i10) {
        dialogInterface.dismiss();
        T1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q1(DialogInterface dialogInterface, int i10) {
        dialogInterface.dismiss();
        startActivityForResult(Henson.with(this).i().build(), 77);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s1(DialogInterface dialogInterface, int i10) {
        dialogInterface.dismiss();
        T1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u1(DialogInterface dialogInterface, int i10) {
        dialogInterface.dismiss();
        startActivityForResult(Henson.with(this).i().build(), 77);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v1(View view) {
        u uVar = this.f27019e0;
        if (uVar != null) {
            uVar.cancel();
        }
        T1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w1(DialogInterface dialogInterface) {
        this.f27047x.setEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x1(View view) {
        this.f27015a0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y1(View view) {
        Y0();
        this.f27015a0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z1(View view) {
        Z1();
        this.f27015a0.dismiss();
    }

    public Context P0() {
        Context applicationContext = getApplicationContext();
        if (Z0(applicationContext)) {
            return applicationContext;
        }
        return null;
    }

    public void Q1(Integer num) {
        new Handler().postDelayed(new n(num), 500L);
    }

    public void U1(String str) {
        if (str == null) {
            return;
        }
        Dialog dialog = this.f27015a0;
        if (dialog == null) {
            Dialog dialog2 = new Dialog(this);
            this.f27015a0 = dialog2;
            if (dialog2.getWindow() != null) {
                this.f27015a0.getWindow().requestFeature(1);
                this.f27015a0.getWindow().clearFlags(2);
                this.f27015a0.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            }
        } else if (dialog.isShowing()) {
            this.f27015a0.dismiss();
        }
        this.f27047x.setEnabled(false);
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.layout_dialog_bantuan, (ViewGroup) null);
        CustomTextView customTextView = (CustomTextView) viewInflate.findViewById(R.id.textViewBantuan);
        CustomTextView customTextView2 = (CustomTextView) viewInflate.findViewById(R.id.textViewLabelBantuan);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.imageViewBantuan);
        CustomButton customButton = (CustomButton) viewInflate.findViewById(R.id.buttonAds);
        CustomTextView customTextView3 = (CustomTextView) viewInflate.findViewById(R.id.textAds);
        customButton.setOnClickListener(new View.OnClickListener() { // from class: t8.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f35452o.v1(view);
            }
        });
        customTextView3.setVisibility(0);
        customButton.d(getResources().getColor(R.color.color_white), getResources().getColor(R.color.nineteen_shop_brown));
        imageView.setVisibility(8);
        customButton.setVisibility(0);
        customTextView2.setVisibility(0);
        customTextView2.setVisibility(8);
        customTextView.setText(str);
        this.f27015a0.setContentView(viewInflate);
        this.f27015a0.show();
        this.f27015a0.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: t8.b0
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f35442o.w1(dialogInterface);
            }
        });
    }

    public void X1() {
        P1(t.a(2));
    }

    public boolean Z0(Context context) {
        if (context == null) {
            return false;
        }
        if (!(context instanceof Activity)) {
            return true;
        }
        Activity activity = (Activity) context;
        return Build.VERSION.SDK_INT >= 17 ? (activity.isDestroyed() || activity.isFinishing()) ? false : true : !activity.isFinishing();
    }

    @Override // y8.w.g
    public void d(String str, int i10, Uri uri) {
        c0 c0Var = new c0(this, R.style.CustomDialog, true, getString(R.string.error_share_image), Integer.valueOf(R.dimen.size_text_button_green));
        c0Var.show();
        new Handler().postDelayed(new g8.i(c0Var), AdLoader.RETRY_DELAY);
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        this.D0.o(i10, i11, intent);
        if (i10 == 77 && i11 == -1) {
            this.E0.addChance(2);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f27047x) {
            if (this.Y.length() > 0) {
                J0();
                return;
            }
            return;
        }
        if (view == this.P) {
            try {
                this.f27015a0.dismiss();
            } catch (Exception unused) {
            }
            if (this.f27036r0 != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(this.f27036r0.clue.get(0).jawaban);
                arrayList.add(this.f27036r0.clue.get(1).jawaban);
                arrayList.add(this.f27036r0.clue.get(2).jawaban);
                arrayList.add(this.f27036r0.clue.get(3).jawaban);
                ArrayList arrayList2 = new ArrayList(this.f27042u0);
                arrayList2.remove(0);
                arrayList2.remove(arrayList2.size() - 1);
                int size = arrayList2.size();
                for (int i10 = 0; i10 < size; i10++) {
                    arrayList.remove(Integer.parseInt(arrayList2.get(i10) + BuildConfig.FLAVOR));
                    arrayList.add(Integer.parseInt(arrayList2.get(i10) + BuildConfig.FLAVOR), "-");
                }
                z zVar = new z(this, R.style.CustomDialog, arrayList);
                this.A0 = zVar;
                zVar.a(new r());
                this.A0.show();
                return;
            }
            return;
        }
        if (view == this.f27041u) {
            this.f27035r = Integer.valueOf(this.f27035r.intValue() + 1);
            this.R.setVisibility(8);
            u uVar = this.f27019e0;
            if (uVar != null) {
                uVar.cancel();
            }
            if (!this.Y.equals("3")) {
                R0();
                this.f27051z.setText((CharSequence) null);
            }
            m8.e.c("clickAnswerPage", "answer page", "click on skip question", this.Y + "-" + this.Z.id + "-" + (this.f27020f0.booleanValue() ? -1 : Integer.valueOf(this.f27018d0)));
            return;
        }
        if (view == this.f27046w0) {
            y.Z(this, Integer.valueOf(R.raw.sound_click));
            Question question = new Question();
            this.Z = question;
            question.answer = this.f27036r0.clue.get(0).jawaban;
            this.f27030o0 = 0;
            H1(this.f27036r0.clue.get(0).soal_image_url, false);
            return;
        }
        if (view == this.f27048x0) {
            y.Z(this, Integer.valueOf(R.raw.sound_click));
            Question question2 = new Question();
            this.Z = question2;
            question2.answer = this.f27036r0.clue.get(1).jawaban;
            this.f27030o0 = 1;
            H1(this.f27036r0.clue.get(1).soal_image_url, false);
            return;
        }
        if (view == this.f27050y0) {
            y.Z(this, Integer.valueOf(R.raw.sound_click));
            Question question3 = new Question();
            this.Z = question3;
            question3.answer = this.f27036r0.clue.get(2).jawaban;
            this.f27030o0 = 2;
            H1(this.f27036r0.clue.get(2).soal_image_url, false);
            return;
        }
        if (view == this.f27052z0) {
            y.Z(this, Integer.valueOf(R.raw.sound_click));
            Question question4 = new Question();
            this.Z = question4;
            question4.answer = this.f27036r0.clue.get(3).jawaban;
            this.f27030o0 = 3;
            H1(this.f27036r0.clue.get(3).soal_image_url, false);
        }
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        j8.b.l().s();
        setContentView(R.layout.activity_event_question);
        w wVar = new w(this);
        this.D0 = wVar;
        wVar.u(this);
        this.f27032p0 = (ResultEventClue) getIntent().getParcelableExtra("event_clue");
        ResultEvents resultEvents = (ResultEvents) getIntent().getParcelableExtra("event_data");
        this.f27034q0 = resultEvents;
        ResultEventClue resultEventClue = this.f27032p0;
        if (resultEventClue != null) {
            this.f27027m0 = true;
            this.Y = resultEventClue.id;
            this.W = resultEventClue.ads_banner;
            this.X = resultEventClue.ads_url;
        } else if (resultEvents != null) {
            this.f27027m0 = false;
            this.Y = resultEvents.id;
            this.W = resultEvents.ads_banner;
            this.X = resultEvents.ads_url;
        }
        this.f27031p = y.y(this, this.Y).intValue();
        this.D0.v(Q0());
        E1();
        X0();
        M0();
        if (this.f27027m0) {
            L0();
        } else {
            R0();
        }
        U0();
        O0();
        G1();
        F1();
        this.f27037s.l();
        T0();
    }

    @Override // androidx.fragment.app.e, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            this.f27015a0.dismiss();
        } catch (Exception unused) {
        }
        j8.b.l().f();
        u uVar = this.f27019e0;
        if (uVar != null) {
            uVar.cancel();
            this.f27019e0 = null;
        }
    }

    @Override // androidx.fragment.app.e, android.app.Activity
    protected void onPause() {
        super.onPause();
        try {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.J.getLayoutParams();
            layoutParams.setMargins(0, layoutParams.topMargin, 0, (int) getResources().getDimension(R.dimen.size_admob_height));
            this.J.setLayoutParams(layoutParams);
            if (TextUtils.isEmpty(this.W) || TextUtils.isEmpty(this.X)) {
                this.V.setVisibility(0);
            } else {
                this.f27045w.setVisibility(0);
            }
        } catch (Exception unused) {
        }
        try {
            this.f27015a0.dismiss();
        } catch (Exception unused2) {
        }
        u uVar = this.f27019e0;
        if (uVar != null) {
            uVar.cancel();
        }
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        Runnable runnable;
        super.onRequestPermissionsResult(i10, strArr, iArr);
        if (i10 == 55) {
            if (y8.o.b(iArr) && (runnable = this.C0) != null) {
                runnable.run();
            }
            this.C0 = null;
        }
    }

    @Override // androidx.fragment.app.e, android.app.Activity
    protected void onResume() {
        super.onResume();
        try {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.J.getLayoutParams();
            layoutParams.setMargins(0, layoutParams.topMargin, 0, (int) getResources().getDimension(R.dimen.size_admob_height));
            this.J.setLayoutParams(layoutParams);
            if (TextUtils.isEmpty(this.W) || TextUtils.isEmpty(this.X)) {
                this.V.setVisibility(0);
            } else {
                this.f27045w.setVisibility(0);
            }
        } catch (Exception unused) {
        }
        if (this.R.getVisibility() == 0) {
            u uVar = this.f27019e0;
            if (uVar != null) {
                uVar.cancel();
            }
            if (this.f27018d0 <= 0) {
                this.f27019e0 = new u(60000L, 1000L);
                return;
            }
            u uVar2 = new u(this.f27018d0 * 1000, 1000L);
            this.f27019e0 = uVar2;
            uVar2.start();
        }
    }

    @Override // y8.w.g
    public void y(int i10, Uri uri) {
        c0 c0Var = new c0(this, R.style.CustomDialog, true, getString(R.string.share_image_success), Integer.valueOf(R.dimen.size_text_button_green));
        c0Var.show();
        new Handler().postDelayed(new g8.i(c0Var), AdLoader.RETRY_DELAY);
    }
}
