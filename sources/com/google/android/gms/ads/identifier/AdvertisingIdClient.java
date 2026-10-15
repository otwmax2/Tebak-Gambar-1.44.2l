package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.BlockingServiceConnection;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads_identifier.zze;
import com.google.android.gms.internal.ads_identifier.zzf;
import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-identifier@@17.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
@ParametersAreNonnullByDefault
public class AdvertisingIdClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    BlockingServiceConnection f5680a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    zzf f5681b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    boolean f5682c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Object f5683d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("mAutoDisconnectTaskLock")
    b f5684e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    private final Context f5685f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final long f5686g;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-identifier@@17.1.0 */
    @KeepForSdkWithMembers
    public static final class Info {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f5687a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f5688b;

        @Deprecated
        public Info(String str, boolean z10) {
            this.f5687a = str;
            this.f5688b = z10;
        }

        public String a() {
            return this.f5687a;
        }

        public boolean b() {
            return this.f5688b;
        }

        public String toString() {
            String str = this.f5687a;
            boolean z10 = this.f5688b;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
            sb.append("{");
            sb.append(str);
            sb.append("}");
            sb.append(z10);
            return sb.toString();
        }
    }

    @KeepForSdk
    public AdvertisingIdClient(Context context) {
        this(context, 30000L, false, false);
    }

    @KeepForSdk
    public static Info a(Context context) throws GooglePlayServicesRepairableException, IllegalStateException, GooglePlayServicesNotAvailableException, IOException {
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, true, false);
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            advertisingIdClient.g(false);
            Info infoI = advertisingIdClient.i(-1);
            advertisingIdClient.h(infoI, true, 0.0f, SystemClock.elapsedRealtime() - jElapsedRealtime, BuildConfig.FLAVOR, null);
            return infoI;
        } finally {
        }
    }

    @KeepForSdk
    public static boolean c(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException, IOException {
        boolean zD;
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, false, false);
        try {
            advertisingIdClient.g(false);
            Preconditions.j("Calling this from your main thread can lead to deadlock");
            synchronized (advertisingIdClient) {
                if (advertisingIdClient.f5682c) {
                    Preconditions.k(advertisingIdClient.f5680a);
                    Preconditions.k(advertisingIdClient.f5681b);
                    zD = advertisingIdClient.f5681b.d();
                } else {
                    synchronized (advertisingIdClient.f5683d) {
                        b bVar = advertisingIdClient.f5684e;
                        if (bVar == null || !bVar.f5693r) {
                            throw new IOException("AdvertisingIdClient is not connected.");
                        }
                    }
                    try {
                        advertisingIdClient.g(false);
                        if (!advertisingIdClient.f5682c) {
                            throw new IOException("AdvertisingIdClient cannot reconnect.");
                        }
                        Preconditions.k(advertisingIdClient.f5680a);
                        Preconditions.k(advertisingIdClient.f5681b);
                        try {
                            zD = advertisingIdClient.f5681b.d();
                        } catch (RemoteException e10) {
                            Log.i("AdvertisingIdClient", "GMS remote exception ", e10);
                            throw new IOException("Remote exception");
                        }
                    } catch (Exception e11) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.", e11);
                    }
                }
            }
            advertisingIdClient.j();
            return zD;
        } finally {
            advertisingIdClient.f();
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public static void d(boolean z10) {
    }

    private final Info i(int i10) throws IOException {
        Info info;
        Preconditions.j("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f5682c) {
                Preconditions.k(this.f5680a);
                Preconditions.k(this.f5681b);
                info = new Info(this.f5681b.a(), this.f5681b.D0(true));
            } else {
                synchronized (this.f5683d) {
                    b bVar = this.f5684e;
                    if (bVar == null || !bVar.f5693r) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    g(false);
                    if (!this.f5682c) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                    Preconditions.k(this.f5680a);
                    Preconditions.k(this.f5681b);
                    try {
                        info = new Info(this.f5681b.a(), this.f5681b.D0(true));
                    } catch (RemoteException e10) {
                        Log.i("AdvertisingIdClient", "GMS remote exception ", e10);
                        throw new IOException("Remote exception");
                    }
                } catch (Exception e11) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e11);
                }
            }
        }
        j();
        return info;
    }

    private final void j() {
        synchronized (this.f5683d) {
            b bVar = this.f5684e;
            if (bVar != null) {
                bVar.f5692q.countDown();
                try {
                    this.f5684e.join();
                } catch (InterruptedException unused) {
                }
            }
            long j10 = this.f5686g;
            if (j10 > 0) {
                this.f5684e = new b(this, j10);
            }
        }
    }

    @KeepForSdk
    public Info b() throws IOException {
        return i(-1);
    }

    @KeepForSdk
    public void e() throws GooglePlayServicesRepairableException, IllegalStateException, GooglePlayServicesNotAvailableException, IOException {
        g(true);
    }

    public final void f() {
        Preconditions.j("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f5685f == null || this.f5680a == null) {
                return;
            }
            try {
                if (this.f5682c) {
                    ConnectionTracker.b().c(this.f5685f, this.f5680a);
                }
            } catch (Throwable th) {
                Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", th);
            }
            this.f5682c = false;
            this.f5681b = null;
            this.f5680a = null;
        }
    }

    protected final void finalize() throws Throwable {
        f();
        super.finalize();
    }

    @VisibleForTesting
    protected final void g(boolean z10) throws GooglePlayServicesRepairableException, IllegalStateException, GooglePlayServicesNotAvailableException, IOException {
        Preconditions.j("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f5682c) {
                f();
            }
            Context context = this.f5685f;
            try {
                context.getPackageManager().getPackageInfo("com.android.vending", 0);
                int iJ = GoogleApiAvailabilityLight.h().j(context, 12451000);
                if (iJ != 0 && iJ != 2) {
                    throw new IOException("Google Play services not available");
                }
                BlockingServiceConnection blockingServiceConnection = new BlockingServiceConnection();
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                try {
                    if (!ConnectionTracker.b().a(context, intent, blockingServiceConnection, 1)) {
                        throw new IOException("Connection failure");
                    }
                    this.f5680a = blockingServiceConnection;
                    try {
                        this.f5681b = zze.P0(blockingServiceConnection.a(10000L, TimeUnit.MILLISECONDS));
                        this.f5682c = true;
                        if (z10) {
                            j();
                        }
                    } catch (InterruptedException unused) {
                        throw new IOException("Interrupted exception");
                    } catch (Throwable th) {
                        throw new IOException(th);
                    }
                } finally {
                    IOException iOException = new IOException(th);
                }
            } catch (PackageManager.NameNotFoundException unused2) {
                throw new GooglePlayServicesNotAvailableException(9);
            }
        }
    }

    @VisibleForTesting
    final boolean h(Info info, boolean z10, float f10, long j10, String str, Throwable th) {
        if (Math.random() > 0.0d) {
            return false;
        }
        HashMap map = new HashMap();
        String str2 = AppEventsConstants.EVENT_PARAM_VALUE_YES;
        map.put("app_context", AppEventsConstants.EVENT_PARAM_VALUE_YES);
        if (info != null) {
            if (true != info.b()) {
                str2 = AppEventsConstants.EVENT_PARAM_VALUE_NO;
            }
            map.put("limit_ad_tracking", str2);
            String strA = info.a();
            if (strA != null) {
                map.put("ad_id_size", Integer.toString(strA.length()));
            }
        }
        if (th != null) {
            map.put("error", th.getClass().getName());
        }
        map.put("tag", "AdvertisingIdClient");
        map.put("time_spent", Long.toString(j10));
        new a(this, map).start();
        return true;
    }

    @VisibleForTesting
    public AdvertisingIdClient(Context context, long j10, boolean z10, boolean z11) {
        Context applicationContext;
        this.f5683d = new Object();
        Preconditions.k(context);
        if (z10 && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.f5685f = context;
        this.f5682c = false;
        this.f5686g = j10;
    }
}
