package w2;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: ApplicationVersionSignature.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ConcurrentHashMap<String, z1.c> f35981a = new ConcurrentHashMap<>();

    public static z1.c a(Context context) {
        String packageName = context.getPackageName();
        ConcurrentHashMap<String, z1.c> concurrentHashMap = f35981a;
        z1.c cVar = concurrentHashMap.get(packageName);
        if (cVar != null) {
            return cVar;
        }
        z1.c cVarB = b(context);
        z1.c cVarPutIfAbsent = concurrentHashMap.putIfAbsent(packageName, cVarB);
        return cVarPutIfAbsent == null ? cVarB : cVarPutIfAbsent;
    }

    private static z1.c b(Context context) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            packageInfo = null;
        }
        return new c(packageInfo != null ? String.valueOf(packageInfo.versionCode) : UUID.randomUUID().toString());
    }
}
