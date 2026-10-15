package androidx.browser.customtabs;

import a.a;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;

/* JADX INFO: compiled from: CustomTabsClient.java */
/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a.b f1270a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ComponentName f1271b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f1272c;

    /* JADX INFO: compiled from: CustomTabsClient.java */
    class a extends e {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ Context f1273o;

        a(Context context) {
            this.f1273o = context;
        }

        @Override // androidx.browser.customtabs.e
        public final void onCustomTabsServiceConnected(ComponentName componentName, c cVar) {
            cVar.f(0L);
            this.f1273o.unbindService(this);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* JADX INFO: compiled from: CustomTabsClient.java */
    class b extends a.AbstractBinderC0000a {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private Handler f1274o = new Handler(Looper.getMainLooper());

        b(androidx.browser.customtabs.b bVar) {
        }

        @Override // a.a
        public void C9(String str, Bundle bundle) throws RemoteException {
        }

        @Override // a.a
        public void T9(Bundle bundle) throws RemoteException {
        }

        @Override // a.a
        public void da(int i10, Uri uri, boolean z10, Bundle bundle) throws RemoteException {
        }

        @Override // a.a
        public void t8(int i10, Bundle bundle) {
        }

        @Override // a.a
        public Bundle u4(String str, Bundle bundle) throws RemoteException {
            return null;
        }

        @Override // a.a
        public void z7(String str, Bundle bundle) throws RemoteException {
        }
    }

    c(a.b bVar, ComponentName componentName, Context context) {
        this.f1270a = bVar;
        this.f1271b = componentName;
        this.f1272c = context;
    }

    public static boolean a(Context context, String str, e eVar) {
        eVar.setApplicationContext(context.getApplicationContext());
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, eVar, 33);
    }

    public static boolean b(Context context, String str) {
        if (str == null) {
            return false;
        }
        Context applicationContext = context.getApplicationContext();
        try {
            return a(applicationContext, str, new a(applicationContext));
        } catch (SecurityException unused) {
            return false;
        }
    }

    private a.AbstractBinderC0000a c(androidx.browser.customtabs.b bVar) {
        return new b(bVar);
    }

    private f e(androidx.browser.customtabs.b bVar, PendingIntent pendingIntent) {
        boolean zC4;
        a.AbstractBinderC0000a abstractBinderC0000aC = c(bVar);
        try {
            if (pendingIntent != null) {
                Bundle bundle = new Bundle();
                bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
                zC4 = this.f1270a.V5(abstractBinderC0000aC, bundle);
            } else {
                zC4 = this.f1270a.C4(abstractBinderC0000aC);
            }
            if (zC4) {
                return new f(this.f1270a, abstractBinderC0000aC, this.f1271b, pendingIntent);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public f d(androidx.browser.customtabs.b bVar) {
        return e(bVar, null);
    }

    public boolean f(long j10) {
        try {
            return this.f1270a.w5(j10);
        } catch (RemoteException unused) {
            return false;
        }
    }
}
