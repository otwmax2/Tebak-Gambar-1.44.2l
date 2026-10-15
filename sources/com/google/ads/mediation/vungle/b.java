package com.google.ads.mediation.vungle;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.ads.AdError;
import com.vungle.mediation.VungleConsent;
import com.vungle.mediation.VungleNetworkSettings;
import com.vungle.warren.InitCallback;
import com.vungle.warren.Plugin;
import com.vungle.warren.Vungle;
import com.vungle.warren.VungleApiClient;
import com.vungle.warren.VungleSettings;
import com.vungle.warren.error.VungleException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: VungleInitializer.java */
/* JADX INFO: loaded from: classes.dex */
public class b implements InitCallback {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final b f5522d = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicBoolean f5523a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f5525c = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList<d> f5524b = new ArrayList<>();

    /* JADX INFO: compiled from: VungleInitializer.java */
    class a implements VungleNetworkSettings.VungleSettingsChangedListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f5526a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f5527b;

        a(String str, Context context) {
            this.f5526a = str;
            this.f5527b = context;
        }

        @Override // com.vungle.mediation.VungleNetworkSettings.VungleSettingsChangedListener
        public void onVungleSettingsChanged(VungleSettings vungleSettings) {
            if (Vungle.isInitialized()) {
                Vungle.init(this.f5526a, this.f5527b.getApplicationContext(), b.this, vungleSettings);
            }
        }
    }

    /* JADX INFO: renamed from: com.google.ads.mediation.vungle.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: VungleInitializer.java */
    class RunnableC0104b implements Runnable {
        RunnableC0104b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (VungleConsent.getCurrentVungleConsent() != null) {
                Vungle.updateConsentStatus(VungleConsent.getCurrentVungleConsent(), VungleConsent.getCurrentVungleConsentMessageVersion());
            }
            Iterator it = b.this.f5524b.iterator();
            while (it.hasNext()) {
                ((d) it.next()).onInitializeSuccess();
            }
            b.this.f5524b.clear();
        }
    }

    /* JADX INFO: compiled from: VungleInitializer.java */
    class c implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ AdError f5530o;

        c(AdError adError) {
            this.f5530o = adError;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = b.this.f5524b.iterator();
            while (it.hasNext()) {
                ((d) it.next()).onInitializeError(this.f5530o);
            }
            b.this.f5524b.clear();
        }
    }

    /* JADX INFO: compiled from: VungleInitializer.java */
    public interface d {
        void onInitializeError(AdError adError);

        void onInitializeSuccess();
    }

    private b() {
        Plugin.addWrapperInfo(VungleApiClient.WrapperFramework.admob, "6.10.2.0".replace('.', '_'));
    }

    public static b b() {
        return f5522d;
    }

    public void c(String str, Context context, d dVar) {
        if (Vungle.isInitialized()) {
            dVar.onInitializeSuccess();
            return;
        }
        if (this.f5523a.getAndSet(true)) {
            this.f5524b.add(dVar);
            return;
        }
        VungleNetworkSettings.setVungleSettingsChangedListener(new a(str, context));
        Vungle.init(str, context.getApplicationContext(), this, VungleNetworkSettings.getVungleSettings());
        this.f5524b.add(dVar);
    }

    @Override // com.vungle.warren.InitCallback
    public void onAutoCacheAdAvailable(String str) {
    }

    @Override // com.vungle.warren.InitCallback
    public void onError(VungleException vungleException) {
        this.f5525c.post(new c(VungleMediationAdapter.getAdError(vungleException)));
        this.f5523a.set(false);
    }

    @Override // com.vungle.warren.InitCallback
    public void onSuccess() {
        this.f5525c.post(new RunnableC0104b());
        this.f5523a.set(false);
    }
}
