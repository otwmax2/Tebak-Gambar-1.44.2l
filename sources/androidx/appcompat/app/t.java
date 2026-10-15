package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import java.util.Calendar;

/* JADX INFO: compiled from: TwilightManager.java */
/* JADX INFO: loaded from: classes.dex */
class t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static t f465d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f466a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LocationManager f467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f468c = new a();

    /* JADX INFO: compiled from: TwilightManager.java */
    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f469a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f470b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f471c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        long f472d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        long f473e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        long f474f;

        a() {
        }
    }

    t(Context context, LocationManager locationManager) {
        this.f466a = context;
        this.f467b = locationManager;
    }

    static t a(Context context) {
        if (f465d == null) {
            Context applicationContext = context.getApplicationContext();
            f465d = new t(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return f465d;
    }

    @SuppressLint({"MissingPermission"})
    private Location b() {
        Location locationC = androidx.core.content.b.c(this.f466a, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? c("network") : null;
        Location locationC2 = androidx.core.content.b.c(this.f466a, "android.permission.ACCESS_FINE_LOCATION") == 0 ? c("gps") : null;
        return (locationC2 == null || locationC == null) ? locationC2 != null ? locationC2 : locationC : locationC2.getTime() > locationC.getTime() ? locationC2 : locationC;
    }

    private Location c(String str) {
        try {
            if (this.f467b.isProviderEnabled(str)) {
                return this.f467b.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e10) {
            Log.d("TwilightManager", "Failed to get last known location", e10);
            return null;
        }
    }

    private boolean e() {
        return this.f468c.f474f > System.currentTimeMillis();
    }

    private void f(Location location) {
        long j10;
        a aVar = this.f468c;
        long jCurrentTimeMillis = System.currentTimeMillis();
        s sVarB = s.b();
        sVarB.a(jCurrentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j11 = sVarB.f462a;
        sVarB.a(jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z10 = sVarB.f464c == 1;
        long j12 = sVarB.f463b;
        long j13 = sVarB.f462a;
        boolean z11 = z10;
        sVarB.a(86400000 + jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        long j14 = sVarB.f463b;
        if (j12 == -1 || j13 == -1) {
            j10 = 43200000 + jCurrentTimeMillis;
        } else {
            j10 = (jCurrentTimeMillis > j13 ? 0 + j14 : jCurrentTimeMillis > j12 ? 0 + j13 : 0 + j12) + 60000;
        }
        aVar.f469a = z11;
        aVar.f470b = j11;
        aVar.f471c = j12;
        aVar.f472d = j13;
        aVar.f473e = j14;
        aVar.f474f = j10;
    }

    boolean d() {
        a aVar = this.f468c;
        if (e()) {
            return aVar.f469a;
        }
        Location locationB = b();
        if (locationB != null) {
            f(locationB);
            return aVar.f469a;
        }
        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i10 = Calendar.getInstance().get(11);
        return i10 < 6 || i10 >= 22;
    }
}
