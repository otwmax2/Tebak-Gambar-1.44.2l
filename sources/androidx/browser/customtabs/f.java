package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: compiled from: CustomTabsSession.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f1288a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a.b f1289b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a.a f1290c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ComponentName f1291d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final PendingIntent f1292e;

    f(a.b bVar, a.a aVar, ComponentName componentName, PendingIntent pendingIntent) {
        this.f1289b = bVar;
        this.f1290c = aVar;
        this.f1291d = componentName;
        this.f1292e = pendingIntent;
    }

    private void a(Bundle bundle) {
        PendingIntent pendingIntent = this.f1292e;
        if (pendingIntent != null) {
            bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
        }
    }

    private Bundle b(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putAll(bundle);
        }
        a(bundle2);
        return bundle2;
    }

    IBinder c() {
        return this.f1290c.asBinder();
    }

    ComponentName d() {
        return this.f1291d;
    }

    PendingIntent e() {
        return this.f1292e;
    }

    public boolean f(Uri uri, Bundle bundle, List<Bundle> list) {
        try {
            return this.f1289b.F7(this.f1290c, uri, b(bundle), list);
        } catch (RemoteException unused) {
            return false;
        }
    }
}
