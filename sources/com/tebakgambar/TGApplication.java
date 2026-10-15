package com.tebakgambar;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.webkit.WebView;
import b5.g;
import com.facebook.FacebookSdk;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.tebakgambar.TGApplication;
import com.tebakgambar.database.TGDatabase;
import com.tebakgambar.model.Level;
import com.tebakgambar.network.TebakGambarApi;
import com.tebakgambar.service.TGDownloadService;
import com.twitter.sdk.android.core.o;
import com.twitter.sdk.android.core.r;
import com.twitter.sdk.android.core.u;
import java.util.concurrent.Callable;
import t1.h;
import v0.b;
import y8.y;

/* JADX INFO: loaded from: classes.dex */
public class TGApplication extends b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static TGApplication f26777p;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f26778o = false;

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (y.q(context) == 1) {
                TGDownloadService.M(TGApplication.f26777p);
            }
        }
    }

    public static synchronized TGApplication d() {
        return f26777p;
    }

    private void e() {
        if (TGDatabase.D(this)) {
            return;
        }
        h.d(new Callable() { // from class: g8.w
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f30036a.g();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object g() throws Exception {
        TGDatabase tGDatabaseC = TGDatabase.C();
        tGDatabaseC.E().i(Level.getDefaultLevels());
        TGDatabase.F(this);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(InitializationStatus initializationStatus) {
    }

    public boolean f() {
        return this.f26778o;
    }

    public void i(boolean z10) {
        this.f26778o = z10;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        f26777p = this;
        FacebookSdk.sdkInitialize(this);
        g.s(this);
        o.i(new u.b(this).c(new r("zUxF8zsXfk67QYz11LiRr4pmP", "ti1ISwiuG8TegS9lDN0PsF4bKMUqZaAtIM6SLqxtgVdf9JLASF")).b(true).a());
        e();
        TebakGambarApi.d(this);
        m8.a.l(this);
        com.tebakgambar.component.b.f().e(m8.a.f());
        if (Build.VERSION.SDK_INT >= 28) {
            WebView.setDataDirectorySuffix(Application.getProcessName());
        }
        MobileAds.a(this, new OnInitializationCompleteListener() { // from class: g8.v
            @Override // com.google.android.gms.ads.initialization.OnInitializationCompleteListener
            public final void a(InitializationStatus initializationStatus) {
                TGApplication.h(initializationStatus);
            }
        });
        registerReceiver(new a(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }
}
