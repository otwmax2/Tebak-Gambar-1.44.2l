package com.tebakgambar.service;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import androidx.core.app.h;
import androidx.core.app.l;
import androidx.core.app.o;
import androidx.work.b;
import com.google.gson.f;
import com.tebakgambar.Henson;
import com.tebakgambar.R;
import com.tebakgambar.database.SliderDatabase;
import com.tebakgambar.database.TGDatabase;
import com.tebakgambar.model.Level;
import com.tebakgambar.model.LevelWithVersioning;
import com.tebakgambar.model.Slider;
import com.tebakgambar.model.response.ApiResponse2;
import com.tebakgambar.network.TebakGambarApi;
import com.tebakgambar.splash.SplashActivity;
import i1.l;
import i1.t;
import i8.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import v1.g;
import y8.h;
import y8.y;

/* JADX INFO: loaded from: classes2.dex */
public class TGDownloadService extends h implements h.a {
    private Vector<Integer> A;
    private long B;
    private int C;
    private l.e D;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private t1.h<Void> f27184x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f27185y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private a f27186z;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ApiResponse2 A() throws Exception {
        wa.l<ApiResponse2> lVarExecute = TebakGambarApi.a().getLevel(TebakGambarApi.e()).execute();
        if (lVarExecute.f()) {
            return lVarExecute.a();
        }
        this.f27184x = null;
        throw new Exception("Download level list failed, " + lVarExecute.g());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t1.h B(t1.h hVar) throws Exception {
        if (hVar.r() != null) {
            this.f27184x = null;
            com.google.firebase.crashlytics.a.a().d(hVar.r());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object C() throws Exception {
        y();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void D() throws Exception {
        this.A.addAll(0, LevelWithVersioning.getAllOutdatedLevelIds(TGDatabase.C().E().e(), y.s(this)));
        return null;
    }

    private static Intent E(Context context) {
        Intent intent = new Intent(context, (Class<?>) TGDownloadService.class);
        intent.setAction("com.tebakgambar.service.action.ondemand_incremental");
        return intent;
    }

    private static Intent F(Context context, int i10) {
        Intent intent = new Intent(context, (Class<?>) TGDownloadService.class);
        intent.setAction("com.tebakgambar.service.action.ondemand");
        intent.putExtra("com.tebakgambar.service.extra.level", i10);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public t1.h<Void> H(t1.h<Void> hVar) {
        return t1.h.d(new Callable() { // from class: w8.b
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f36026a.D();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public t1.h<Void> I(t1.h<Void> hVar) {
        Iterator<Level> it = TGDatabase.C().E().f().iterator();
        while (it.hasNext()) {
            g.v(this).x(it.next().frameUrl).Z(Integer.MIN_VALUE, Integer.MIN_VALUE);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public t1.h<Void> J(t1.h<Void> hVar) {
        Iterator<Slider> it = SliderDatabase.C().D().a().iterator();
        while (it.hasNext()) {
            Iterator<Slider.Image> it2 = it.next().images.iterator();
            while (it2.hasNext()) {
                g.v(this).x(it2.next().imageUrl).Z(Integer.MIN_VALUE, Integer.MIN_VALUE);
            }
        }
        return null;
    }

    private void K(int i10) {
        if (this.A.firstElement().intValue() == i10) {
            this.A.removeElementAt(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public t1.h<Void> L(t1.h<Void> hVar) throws Throwable {
        t tVarD = t.d();
        List<Level> listB = TGDatabase.C().E().b();
        ArrayList arrayList = new ArrayList();
        f fVar = new f();
        for (Level level : listB) {
            if (level.isValidLocalNotification()) {
                arrayList.add(new l.a(LocalNotificationWorker.class).a("tg-upcoming-level").f(level.comingSoon.releaseLocalNotification.time - System.currentTimeMillis(), TimeUnit.MILLISECONDS).g(new b.a().e("json", fVar.t(level.comingSoon.releaseLocalNotification)).a()).b());
            }
        }
        tVarD.a("tg-upcoming-level");
        if (arrayList.isEmpty()) {
            return null;
        }
        tVarD.c(arrayList);
        return null;
    }

    public static void M(Context context) {
        Intent intent = new Intent(context, (Class<?>) TGDownloadService.class);
        intent.setAction("com.tebakgambar.service.action.start");
        O(context, intent);
    }

    private void N(int i10) {
        this.C = i10;
        Intent intent = new Intent(this, (Class<?>) SplashActivity.class);
        intent.setAction("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setFlags(270532608);
        l.e eVarU = new l.e(this, "tg-download-service").k(getString(R.string.app_name)).j(getString(R.string.label_level_loading_title, new Object[]{Integer.valueOf(this.C)})).z(getString(R.string.label_level_loading_title, new Object[]{Integer.valueOf(this.C)})).s(true).t(1).w(R.drawable.ic_launcher).i(PendingIntent.getActivity(this, 0, intent, 0)).u(100, 0, true);
        this.D = eVarU;
        startForeground(1, eVarU.b());
    }

    private static void O(Context context, Intent intent) {
        try {
            x(context, intent);
        } catch (Exception e10) {
            e10.printStackTrace();
            com.google.firebase.crashlytics.a.a().d(e10);
        }
    }

    private void P(boolean z10, boolean z11) {
        Intent intentBuild;
        String string;
        if (z10) {
            if (z11) {
                intentBuild = Henson.with(this).d().level(this.C).a();
                string = getString(R.string.label_level_loading_done_title, new Object[]{Integer.valueOf(this.C)});
            } else {
                intentBuild = Henson.with(this).e().failedLevel(this.C).build();
                string = getString(R.string.label_level_loading_failed_title, new Object[]{Integer.valueOf(this.C)});
            }
            intentBuild.setFlags(603979776);
            l.e eVarI = new l.e(this, "tg-download-service").k(getString(R.string.app_name)).j(string).f(true).t(2).w(R.drawable.ic_launcher).i(PendingIntent.getActivity(this, 0, intentBuild, 268435456));
            if (!z11) {
                eVarI.a(0, getString(R.string.try_again), PendingIntent.getService(this, 0, F(this, this.C), 268435456));
            }
            o.b(this).d(2, eVarI.b());
        }
        this.C = -1;
        this.D = null;
        stopForeground(true);
    }

    private void Q() {
        this.D.u(100, (int) this.f27186z.b(), false);
        o.b(this).d(1, this.D.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public t1.h<Void> t(t1.h<ApiResponse2> hVar) {
        TGDatabase.C().E().g(hVar.s().data);
        SliderDatabase.C().D().d(hVar.s().dataSlider);
        u0.a.b(this).d(new Intent("levelUpdated"));
        return null;
    }

    private t1.h<Void> u(boolean z10) {
        t1.h<Void> hVar = this.f27184x;
        if (hVar != null && !z10) {
            return hVar;
        }
        t1.h<Void> hVarL = t1.h.d(new Callable() { // from class: w8.a
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f36025a.A();
            }
        }).z(new t1.f() { // from class: w8.e
            @Override // t1.f
            public final Object a(t1.h hVar2) {
                return this.f36029a.t(hVar2);
            }
        }).z(new t1.f() { // from class: w8.d
            @Override // t1.f
            public final Object a(t1.h hVar2) {
                return this.f36028a.J(hVar2);
            }
        }).z(new t1.f() { // from class: w8.j
            @Override // t1.f
            public final Object a(t1.h hVar2) {
                return this.f36034a.I(hVar2);
            }
        }).z(new t1.f() { // from class: w8.h
            @Override // t1.f
            public final Object a(t1.h hVar2) {
                return this.f36032a.L(hVar2);
            }
        }).z(new w8.g(this)).z(new w8.f(this)).l(new t1.f() { // from class: w8.i
            @Override // t1.f
            public final Object a(t1.h hVar2) {
                return this.f36033a.B(hVar2);
            }
        });
        this.f27184x = hVarL;
        return hVarL;
    }

    public static void v(Context context, Level level) {
        O(context, F(context, level.id));
    }

    public static void w(Context context) {
        O(context, E(context));
    }

    static void x(Context context, Intent intent) {
        androidx.core.app.h.d(context, TGDownloadService.class, 1000, intent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b2, code lost:
    
        G(false);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void y() {
        /*
            Method dump skipped, instruction units count: 220
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tebakgambar.service.TGDownloadService.y():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public t1.h<Void> z(t1.h<Void> hVar) {
        t1.h.d(new Callable() { // from class: w8.c
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f36027a.C();
            }
        });
        return null;
    }

    public void G(boolean z10) {
        a aVar = this.f27186z;
        if (aVar != null) {
            aVar.g(z10);
            boolean zD = u0.a.b(this).d(this.f27186z.h());
            if (this.f27186z.a().id == this.C) {
                P(!zD, z10);
            }
        }
    }

    @Override // androidx.core.app.h
    protected void g(Intent intent) {
        if (intent == null) {
            u(false);
            return;
        }
        String action = intent.getAction();
        if ("com.tebakgambar.service.action.start".equals(action)) {
            u(false);
            return;
        }
        if ("com.tebakgambar.service.action.ondemand".equals(action)) {
            int intExtra = intent.getIntExtra("com.tebakgambar.service.extra.level", 0);
            this.A.add(0, Integer.valueOf(intExtra));
            N(intExtra);
            z(null);
            return;
        }
        if ("com.tebakgambar.service.action.ondemand_incremental".equals(action)) {
            u(false).z(new w8.g(this)).z(new w8.f(this));
        } else if ("com.tebakgambar.service.action.stop".equals(action)) {
            stopForeground(false);
            stopSelf();
        }
    }

    @Override // androidx.core.app.h, android.app.Service
    public void onCreate() {
        super.onCreate();
        this.A = new Vector<>();
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
            NotificationChannel notificationChannel = new NotificationChannel("tg-download-service", "Tebak Gambar Download", 3);
            notificationChannel.setDescription("Tebak Gambar Download");
            if (notificationManager != null) {
                notificationManager.createNotificationChannel(notificationChannel);
            }
        }
    }

    @Override // y8.h.a
    public void onProgress(long j10, long j11) {
        if (System.currentTimeMillis() - this.B > 500) {
            Log.v("pPercentage", "Current:" + j10 + " Max:" + j11);
            a aVar = this.f27186z;
            if (aVar != null) {
                aVar.i(j10, j11);
                if (this.f27186z.a().id == this.C) {
                    Q();
                }
            }
            u0.a.b(this).d(this.f27186z.h());
            this.B = System.currentTimeMillis();
        }
    }
}
