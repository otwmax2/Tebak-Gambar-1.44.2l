package com.tebakgambar.levelselection;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;
import com.tebakgambar.levelselection.r;
import com.tebakgambar.model.BaseEvent;
import com.tebakgambar.model.CustomBanner;
import com.tebakgambar.model.Event2;
import com.tebakgambar.model.Level;
import com.tebakgambar.model.RequestHeader;
import com.tebakgambar.model.ResultEventClue;
import com.tebakgambar.model.ResultEvents;
import com.tebakgambar.model.response.ApiResponse3;
import com.tebakgambar.network.TebakGambarApi;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: LevelSelectionViewModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class z extends j8.x {
    r.j C;
    androidx.lifecycle.t<CustomBanner> D;
    y8.u<BaseEvent> E;
    private Event2 F;
    public int G;
    private List<NativeAd> H;
    private BroadcastReceiver I;
    private m8.a J;
    private AdLoader K;

    /* JADX INFO: compiled from: LevelSelectionViewModel.java */
    class a extends AdListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArrayList f27001a;

        a(ArrayList arrayList) {
            this.f27001a = arrayList;
        }

        @Override // com.google.android.gms.ads.AdListener
        public void e() {
            super.e();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void m(LoadAdError loadAdError) {
            super.m(loadAdError);
            if (z.this.K == null || z.this.K.a()) {
                return;
            }
            z.this.H = this.f27001a;
            z.this.c0();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void n() {
            super.n();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void o() {
            super.o();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void p() {
            super.p();
        }

        @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.ads.internal.client.zza
        public void w0() {
            super.w0();
            m8.e.c("clickAds", "level page", "click on ads", BuildConfig.FLAVOR);
        }
    }

    /* JADX INFO: compiled from: LevelSelectionViewModel.java */
    class b implements wa.d<ApiResponse3<Event2>> {
        b() {
        }

        @Override // wa.d
        public void a(wa.b<ApiResponse3<Event2>> bVar, wa.l<ApiResponse3<Event2>> lVar) {
            z zVar = z.this;
            if (zVar.G != 0) {
                ((j8.x) zVar).f30907v.n(Boolean.FALSE);
            }
            if (lVar.a() != null) {
                z.this.Q(lVar.a().data);
                z.this.e0(lVar.a().data);
                z.this.c0();
            }
            z.this.G = 0;
        }

        @Override // wa.d
        public void b(wa.b<ApiResponse3<Event2>> bVar, Throwable th) {
            z zVar = z.this;
            if (zVar.G != 0) {
                ((j8.x) zVar).f30907v.n(Boolean.FALSE);
            }
            z.this.G = 0;
        }
    }

    /* JADX INFO: compiled from: LevelSelectionViewModel.java */
    private class c extends BroadcastReceiver {
        private c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            z.this.c0();
        }

        /* synthetic */ c(z zVar, a aVar) {
            this();
        }
    }

    public z(Application application) {
        super(application);
        this.C = new r.j();
        this.D = new androidx.lifecycle.t<>();
        this.E = new y8.u<>();
        this.H = new ArrayList();
        this.K = null;
        b0();
        c0();
        this.J = m8.a.f();
        this.I = new c(this, null);
        u0.a.b(j()).c(this.I, new IntentFilter("levelUpdated"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q(Event2 event2) {
        String strT = new com.google.gson.f().t(event2);
        if (strT.equals(y8.y.F(j()))) {
            return;
        }
        y8.y.p0(j(), strT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void W(ArrayList arrayList, NativeAd nativeAd) {
        arrayList.add(nativeAd);
        AdLoader adLoader = this.K;
        if (adLoader == null || adLoader.a()) {
            return;
        }
        this.H = arrayList;
        c0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X() {
        this.G = 0;
        this.f30907v.n(Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object Y(Task task) throws Exception {
        if (this.G != 0) {
            this.f30907v.n(Boolean.TRUE);
        }
        TebakGambarApi.b().getEvent(RequestHeader.create(((g5.u) task.p()).c())).v3(new b());
        if (this.G == 0) {
            return null;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.tebakgambar.levelselection.w
            @Override // java.lang.Runnable
            public final void run() {
                this.f26997o.X();
            }
        }, 3000L);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z(final Task task) {
        if (!task.t() || task.p() == null || ((g5.u) task.p()).c() == null) {
            return;
        }
        t1.h.d(new Callable() { // from class: com.tebakgambar.levelselection.y
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f26999a.Y(task);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object a0() throws Exception {
        boolean z10;
        ArrayList arrayList = new ArrayList();
        Event2 event2 = this.F;
        if (event2 != null) {
            ArrayList<ResultEvents> arrayList2 = event2.event;
            if (arrayList2 != null) {
                arrayList.addAll(arrayList2);
            }
            ArrayList<ResultEventClue> arrayList3 = this.F.event_clue;
            if (arrayList3 != null) {
                arrayList.addAll(arrayList3);
            }
        }
        List<Level> allLevels = Level.getAllLevels();
        Iterator<Level> it = allLevels.iterator();
        while (true) {
            if (!it.hasNext()) {
                z10 = true;
                break;
            }
            if (it.next().isUpcomingLevel()) {
                z10 = false;
                break;
            }
        }
        arrayList.addAll(allLevels);
        int size = arrayList.size() / 10;
        for (int i10 = 1; i10 <= size; i10++) {
            List<NativeAd> list = this.H;
            arrayList.add(((i10 * 10) + i10) - 1, (list == null || list.isEmpty()) ? new r.j.b() : this.H.get((i10 - 1) % this.H.size()));
        }
        if (z10) {
            arrayList.add(new r.j.a());
        }
        this.C.f26991b.z(arrayList);
        this.C.f26990a.z(y8.y.s(j()));
        return null;
    }

    private void b0() {
        try {
            Event2 event2 = (Event2) new com.google.gson.f().k(y8.y.F(j()), Event2.class);
            if (event2 != null) {
                e0(event2);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            com.google.firebase.crashlytics.a.a().d(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c0() {
        t1.h.d(new Callable() { // from class: com.tebakgambar.levelselection.x
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f26998a.a0();
            }
        });
    }

    private void d0(Event2 event2) {
        if (this.G != 0) {
            ArrayList<BaseEvent> arrayList = new ArrayList();
            ArrayList<ResultEvents> arrayList2 = event2.event;
            if (arrayList2 != null) {
                arrayList.addAll(arrayList2);
            }
            ArrayList<ResultEventClue> arrayList3 = event2.event_clue;
            if (arrayList3 != null) {
                arrayList.addAll(arrayList3);
            }
            for (BaseEvent baseEvent : arrayList) {
                if ((this.G + BuildConfig.FLAVOR).equals(baseEvent.id)) {
                    this.E.n(baseEvent);
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0(Event2 event2) {
        ArrayList<CustomBanner> arrayList = event2.custom_banner;
        if (arrayList != null && arrayList.size() > 0) {
            this.D.n(event2.custom_banner.get(0));
        }
        this.F = event2;
        d0(event2);
    }

    void R() {
        if (this.C.f26991b.y() == null || !this.C.f26991b.y().isEmpty()) {
            return;
        }
        this.C.f26990a.z(y8.y.s(j()));
    }

    void S() {
        AdLoader adLoader = this.K;
        if (adLoader == null || !adLoader.a()) {
            final ArrayList arrayList = new ArrayList();
            if (this.K == null) {
                this.K = new AdLoader.Builder(j(), "ca-app-pub-7269282889157841/4082918816").c(new NativeAd.OnNativeAdLoadedListener() { // from class: com.tebakgambar.levelselection.u
                    @Override // com.google.android.gms.ads.nativead.NativeAd.OnNativeAdLoadedListener
                    public final void a(NativeAd nativeAd) {
                        this.f26994a.W(arrayList, nativeAd);
                    }
                }).e(new a(arrayList)).g(new NativeAdOptions.Builder().a()).a();
            }
            this.K.c(j8.b.k(), 5);
        }
    }

    void T() {
        g5.s sVarB = FirebaseAuth.getInstance().b();
        if (sVarB == null) {
            return;
        }
        sVarB.W3(true).c(new OnCompleteListener() { // from class: com.tebakgambar.levelselection.v
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void a(Task task) {
                this.f26996a.Z(task);
            }
        });
    }

    void U(Level level) {
        level.generateLevelIfNeeded(j());
    }

    boolean V(BaseEvent baseEvent) {
        String str = baseEvent.need_login;
        boolean z10 = false;
        if (str == null || str.isEmpty()) {
            return false;
        }
        g5.s sVarB = FirebaseAuth.getInstance().b();
        if (sVarB != null && !sVarB.c4()) {
            z10 = true;
        }
        return !z10;
    }

    void f0() {
        if (this.J.g() == 0) {
            this.J.A(5);
        }
    }

    @Override // androidx.lifecycle.g0
    protected void h() {
        super.h();
        this.K = null;
        if (this.I != null) {
            u0.a.b(j()).e(this.I);
        }
    }
}
