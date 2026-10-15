package x6;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import java.util.List;
import java.util.Map;
import y6.b;

/* JADX INFO: compiled from: SessionEvents.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b0 f36321a = new b0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final d6.a f36322b;

    static {
        d6.a aVarI = new f6.d().j(c.f36323a).k(true).i();
        t9.m.d(aVarI, "JsonDataEncoderBuilder()…lues(true)\n      .build()");
        f36322b = aVarI;
    }

    private b0() {
    }

    private final d d(y6.b bVar) {
        return bVar == null ? d.COLLECTION_SDK_NOT_INSTALLED : bVar.b() ? d.COLLECTION_ENABLED : d.COLLECTION_DISABLED;
    }

    public final a0 a(b5.g gVar, z zVar, z6.f fVar, u uVar, List<u> list, Map<b.a, ? extends y6.b> map, String str) {
        t9.m.e(gVar, "firebaseApp");
        t9.m.e(zVar, "sessionDetails");
        t9.m.e(fVar, "sessionsSettings");
        t9.m.e(uVar, "currentProcessDetails");
        t9.m.e(list, "appProcessDetails");
        t9.m.e(map, "subscribers");
        t9.m.e(str, "firebaseInstallationId");
        return new a0(j.SESSION_START, new f0(zVar.b(), zVar.a(), zVar.c(), zVar.d(), new f(d(map.get(b.a.PERFORMANCE)), d(map.get(b.a.CRASHLYTICS)), fVar.b()), str), b(gVar));
    }

    public final b b(b5.g gVar) throws PackageManager.NameNotFoundException {
        t9.m.e(gVar, "firebaseApp");
        Context contextL = gVar.l();
        t9.m.d(contextL, "firebaseApp.applicationContext");
        String packageName = contextL.getPackageName();
        PackageInfo packageInfo = contextL.getPackageManager().getPackageInfo(packageName, 0);
        String strValueOf = Build.VERSION.SDK_INT >= 28 ? String.valueOf(packageInfo.getLongVersionCode()) : String.valueOf(packageInfo.versionCode);
        String strC = gVar.p().c();
        t9.m.d(strC, "firebaseApp.options.applicationId");
        String str = Build.MODEL;
        t9.m.d(str, "MODEL");
        String str2 = Build.VERSION.RELEASE;
        t9.m.d(str2, "RELEASE");
        t tVar = t.LOG_ENVIRONMENT_PROD;
        t9.m.d(packageName, "packageName");
        String str3 = packageInfo.versionName;
        String str4 = str3 == null ? strValueOf : str3;
        String str5 = Build.MANUFACTURER;
        t9.m.d(str5, "MANUFACTURER");
        v vVar = v.f36458a;
        Context contextL2 = gVar.l();
        t9.m.d(contextL2, "firebaseApp.applicationContext");
        u uVarD = vVar.d(contextL2);
        Context contextL3 = gVar.l();
        t9.m.d(contextL3, "firebaseApp.applicationContext");
        return new b(strC, str, "1.2.0", str2, tVar, new a(packageName, str4, strValueOf, str5, uVarD, vVar.c(contextL3)));
    }

    public final d6.a c() {
        return f36322b;
    }
}
