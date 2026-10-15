package j8;

import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.tebakgambar.R;
import com.tebakgambar.TGApplication;
import com.tebakgambar.model.Ads;
import com.vungle.mediation.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: compiled from: FragmentCustomAds.java */
/* JADX INFO: loaded from: classes2.dex */
public class k0 extends Fragment {
    private TextView A;
    private Button B;
    private boolean C;
    private boolean D;
    private ArrayList<Ads> G;
    public String H;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private d f30841o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Timer f30842p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Handler f30843q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Runnable f30844r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ImageView f30845s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ImageView f30846t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ImageView f30847u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ImageView f30848v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private FrameLayout f30849w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private FrameLayout f30850x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private AdView f30851y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private NativeAdView f30852z;
    private String E = "ca-app-pub-7269282889157841/2259635716";
    private int F = 8;
    public String I = BuildConfig.FLAVOR;

    /* JADX INFO: compiled from: FragmentCustomAds.java */
    class a extends AdListener {
        a() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void m(LoadAdError loadAdError) {
            super.m(loadAdError);
            k0.this.L();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void o() {
            super.o();
            k0.this.C = true;
            k0.this.D = false;
            k0.this.f30850x.setVisibility(0);
            k0.this.f30849w.setVisibility(8);
        }

        @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.ads.internal.client.zza
        public void w0() {
            super.w0();
            k0 k0Var = k0.this;
            String str = k0Var.H;
            if (str != null) {
                m8.e.c("clickAds", str, "click on ads", k0Var.I);
            }
        }
    }

    /* JADX INFO: compiled from: FragmentCustomAds.java */
    class b extends AdListener {
        b() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void e() {
            super.e();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void m(LoadAdError loadAdError) {
            super.m(loadAdError);
            k0.this.D = false;
            k0.this.f30850x.setVisibility(8);
            k0.this.f30849w.setVisibility(0);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void n() {
            super.n();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void o() {
            super.o();
            k0.this.f30852z.setVisibility(8);
            k0.this.f30851y.setVisibility(0);
            k0.this.C = true;
            k0.this.f30850x.setVisibility(0);
            k0.this.f30849w.setVisibility(8);
            k0.this.D = false;
        }

        @Override // com.google.android.gms.ads.AdListener
        public void p() {
            super.p();
        }

        @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.ads.internal.client.zza
        public void w0() {
            super.w0();
            k0 k0Var = k0.this;
            String str = k0Var.H;
            if (str != null) {
                m8.e.c("clickAds", str, "click on ads", k0Var.I);
            }
        }
    }

    /* JADX INFO: compiled from: FragmentCustomAds.java */
    class c implements t2.f<String, l2.b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ t2.f f30855a;

        c(t2.f fVar) {
            this.f30855a = fVar;
        }

        @Override // t2.f
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public boolean b(Exception exc, String str, v2.j<l2.b> jVar, boolean z10) {
            t2.f fVar = this.f30855a;
            if (fVar != null) {
                fVar.b(exc, str, jVar, z10);
            }
            k0.this.f30848v.setVisibility(0);
            return false;
        }

        @Override // t2.f
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(l2.b bVar, String str, v2.j<l2.b> jVar, boolean z10, boolean z11) {
            t2.f fVar = this.f30855a;
            if (fVar != null) {
                fVar.a(bVar, str, jVar, z10, z11);
            }
            k0.this.f30848v.setVisibility(0);
            return false;
        }
    }

    /* JADX INFO: compiled from: FragmentCustomAds.java */
    public class d extends BroadcastReceiver {
        public d() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (y8.y.q(context) == 1) {
                Handler handler = k0.this.f30843q;
                final k0 k0Var = k0.this;
                handler.post(new Runnable() { // from class: j8.l0
                    @Override // java.lang.Runnable
                    public final void run() {
                        k0.r(k0Var);
                    }
                });
            }
        }
    }

    /* JADX INFO: compiled from: FragmentCustomAds.java */
    public class e extends TimerTask {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        int f30858o = 0;

        /* JADX INFO: compiled from: FragmentCustomAds.java */
        class a implements t2.f<Integer, l2.b> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ ImageView f30860a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ ImageView f30861b;

            a(ImageView imageView, ImageView imageView2) {
                this.f30860a = imageView;
                this.f30861b = imageView2;
            }

            @Override // t2.f
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public boolean b(Exception exc, Integer num, v2.j<l2.b> jVar, boolean z10) {
                this.f30860a.setVisibility(8);
                this.f30861b.setVisibility(8);
                return false;
            }

            @Override // t2.f
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public boolean a(l2.b bVar, Integer num, v2.j<l2.b> jVar, boolean z10, boolean z11) {
                this.f30860a.setVisibility(0);
                this.f30861b.setVisibility(8);
                return false;
            }
        }

        public e() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(View view) {
            String str;
            try {
                str = ((Ads) k0.this.G.get(this.f30858o - 1)).url;
            } catch (Exception unused) {
                str = ((Ads) k0.this.G.get(0)).url;
            }
            if (str.contains("http://")) {
                try {
                    k0.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                    return;
                } catch (ActivityNotFoundException unused2) {
                    Toast.makeText(k0.this.getActivity(), "No browser found", 0).show();
                    return;
                }
            }
            try {
                k0.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + str)));
            } catch (ActivityNotFoundException unused3) {
                k0.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://play.google.com/store/apps/details?id=" + str)));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d() {
            if (this.f30858o >= k0.this.F) {
                this.f30858o = 0;
                Collections.shuffle(k0.this.G);
                return;
            }
            ImageView imageView = this.f30858o % 2 == 0 ? k0.this.f30845s : k0.this.f30846t;
            ImageView imageView2 = this.f30858o % 2 == 1 ? k0.this.f30845s : k0.this.f30846t;
            if (k0.this.getActivity() == null) {
                return;
            }
            v1.g.w(k0.this.getActivity()).w(((Ads) k0.this.G.get(this.f30858o)).imageId).N(new a(imageView, imageView2)).p(imageView);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: j8.m0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f30866o.c(view);
                }
            });
            this.f30858o++;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (k0.this.getActivity() == null) {
                return;
            }
            k0.this.getActivity().runOnUiThread(new Runnable() { // from class: j8.n0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f30868o.d();
                }
            });
        }
    }

    private void E() {
        if (getActivity() != null && y8.y.q(getActivity()) == 1) {
            O();
        }
    }

    private void F() {
        AdView adView = this.f30851y;
        if (adView != null) {
            adView.removeAllViews();
            this.f30851y.a();
        }
        this.f30852z.removeAllViews();
        this.f30852z.a();
    }

    private AdSize G() {
        Display defaultDisplay = getActivity().getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return AdSize.a(getActivity(), (int) (displayMetrics.widthPixels / displayMetrics.density));
    }

    private ArrayList<Ads> H(Context context) {
        String[] stringArray = context.getResources().getStringArray(R.array.array_ads);
        ArrayList<Ads> arrayList = new ArrayList<>();
        for (int i10 = 0; i10 < this.F; i10++) {
            Ads ads = new Ads();
            ads.adsId = i10;
            ads.url = stringArray[i10].split("#")[0];
            ads.imageId = Integer.valueOf(context.getResources().getIdentifier(stringArray[i10].split("#")[1], "drawable", context.getPackageName()));
            arrayList.add(ads);
        }
        Collections.shuffle(arrayList);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(NativeAd nativeAd) {
        this.f30852z.setVisibility(0);
        this.A.setText(nativeAd.c());
        this.B.setText(nativeAd.b());
        this.f30852z.setNativeAd(nativeAd);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J(String str, t2.f fVar, View.OnClickListener onClickListener) {
        this.f30848v.setVisibility(0);
        v1.g.v(getContext()).x(str).Q(R.drawable.ads_5juta).J(R.drawable.ads_5juta).N(new c(fVar)).j(b2.b.NONE).z(true).p(this.f30848v);
        this.f30848v.setOnClickListener(onClickListener);
    }

    private void K() {
        Runnable runnable = this.f30844r;
        if (runnable == null) {
            M();
        } else {
            this.f30843q.postDelayed(runnable, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L() {
        this.D = true;
        if (this.f30851y != null || getContext() == null) {
            return;
        }
        AdView adView = new AdView((Context) new WeakReference(getContext().getApplicationContext()).get());
        this.f30851y = adView;
        adView.setAdUnitId("ca-app-pub-7269282889157841/3950288814");
        this.f30850x.addView(this.f30851y);
        this.f30851y.setAdListener(new b());
        try {
            AdRequest adRequestC = new AdRequest.Builder().c();
            this.f30851y.setAdSize(G());
            this.f30851y.b(adRequestC);
        } catch (Exception e10) {
            Toast.makeText(getActivity(), "Show:" + this.E + ", but got error: " + e10.getLocalizedMessage(), 1).show();
        }
    }

    private void M() {
        this.D = true;
        new AdLoader.Builder(TGApplication.d(), "ca-app-pub-7269282889157841/2259635716").c(new NativeAd.OnNativeAdLoadedListener() { // from class: j8.i0
            @Override // com.google.android.gms.ads.nativead.NativeAd.OnNativeAdLoadedListener
            public final void a(NativeAd nativeAd) {
                this.f30830a.I(nativeAd);
            }
        }).e(new a()).g(new NativeAdOptions.Builder().a()).a().b(j8.b.k());
    }

    public static k0 N(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("unitId", str);
        k0 k0Var = new k0();
        k0Var.setArguments(bundle);
        return k0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        if (this.C || this.D) {
            return;
        }
        K();
    }

    private void P() {
        AdView adView = this.f30851y;
        if (adView != null) {
            adView.c();
        }
    }

    private void Q() {
        Timer timer = this.f30842p;
        if (timer != null) {
            timer.cancel();
            this.f30842p = null;
        }
    }

    private void S() {
        AdView adView = this.f30851y;
        if (adView != null) {
            adView.d();
        }
    }

    private void T() {
        Timer timer = this.f30842p;
        if (timer != null) {
            timer.cancel();
        }
        Timer timer2 = new Timer();
        this.f30842p = timer2;
        timer2.schedule(new e(), 500L, 8000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void r(k0 k0Var) {
        k0Var.O();
    }

    public void R() {
        this.f30848v.setVisibility(8);
    }

    public void U(final String str, final t2.f<String, l2.b> fVar, final View.OnClickListener onClickListener) {
        this.f30844r = new Runnable() { // from class: j8.j0
            @Override // java.lang.Runnable
            public final void run() {
                this.f30836o.J(str, fVar, onClickListener);
            }
        };
    }

    public void V(boolean z10) {
        if (z10) {
            this.f30847u.setVisibility(0);
            this.f30850x.setVisibility(8);
            this.f30849w.setVisibility(8);
        } else {
            if (this.C) {
                this.f30850x.setVisibility(0);
            } else {
                this.f30849w.setVisibility(0);
            }
            this.f30847u.setVisibility(8);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.f30843q = new Handler();
        this.f30841o = new d();
        this.G = H(getContext());
        if (getArguments() != null) {
            this.E = getArguments().getString("unitId", "ca-app-pub-7269282889157841/3950288814");
        }
        K();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_ads_compact, viewGroup, false);
        this.f30845s = (ImageView) viewInflate.findViewById(R.id.imageAds1);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.imageAds2);
        this.f30846t = imageView;
        imageView.setVisibility(8);
        this.f30849w = (FrameLayout) viewInflate.findViewById(R.id.relativeLayoutOfflineAds);
        this.f30847u = (ImageView) viewInflate.findViewById(R.id.imageAdsScreenshot);
        this.f30848v = (ImageView) viewInflate.findViewById(R.id.imageAlternativeAd);
        this.f30850x = (FrameLayout) viewInflate.findViewById(R.id.adViewContainer);
        this.f30852z = (NativeAdView) viewInflate.findViewById(R.id.unifiedAdView);
        this.A = (TextView) viewInflate.findViewById(R.id.textViewUnifiedAdTitle);
        this.B = (Button) viewInflate.findViewById(R.id.buttonUnifiedAdAction);
        this.f30852z.setHeadlineView(this.A);
        this.f30852z.setCallToActionView(this.B);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        F();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        if (getActivity() != null) {
            getActivity().unregisterReceiver(this.f30841o);
        }
        Q();
        P();
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (getActivity() != null) {
            getActivity().registerReceiver(this.f30841o, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }
        E();
        T();
        S();
    }
}
