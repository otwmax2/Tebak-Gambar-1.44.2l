package q5;

import android.content.Context;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: InstallerPackageNameProvider.java */
/* JADX INFO: loaded from: classes2.dex */
class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f33887a;

    d0() {
    }

    private static String b(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        return installerPackageName == null ? BuildConfig.FLAVOR : installerPackageName;
    }

    synchronized String a(Context context) {
        if (this.f33887a == null) {
            this.f33887a = b(context);
        }
        return BuildConfig.FLAVOR.equals(this.f33887a) ? null : this.f33887a;
    }
}
