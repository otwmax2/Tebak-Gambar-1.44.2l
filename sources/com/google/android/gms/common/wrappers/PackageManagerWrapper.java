package com.google.android.gms.common.wrappers;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Binder;
import android.os.Process;
import androidx.core.util.d;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class PackageManagerWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Context f7670a;

    public PackageManagerWrapper(Context context) {
        this.f7670a = context;
    }

    @KeepForSdk
    public int a(String str) {
        return this.f7670a.checkCallingOrSelfPermission(str);
    }

    @KeepForSdk
    public int b(String str, String str2) {
        return this.f7670a.getPackageManager().checkPermission(str, str2);
    }

    @KeepForSdk
    public ApplicationInfo c(String str, int i10) throws PackageManager.NameNotFoundException {
        return this.f7670a.getPackageManager().getApplicationInfo(str, i10);
    }

    @KeepForSdk
    public CharSequence d(String str) throws PackageManager.NameNotFoundException {
        return this.f7670a.getPackageManager().getApplicationLabel(this.f7670a.getPackageManager().getApplicationInfo(str, 0));
    }

    @KeepForSdk
    public d<CharSequence, Drawable> e(String str) throws PackageManager.NameNotFoundException {
        ApplicationInfo applicationInfo = this.f7670a.getPackageManager().getApplicationInfo(str, 0);
        return d.a(this.f7670a.getPackageManager().getApplicationLabel(applicationInfo), this.f7670a.getPackageManager().getApplicationIcon(applicationInfo));
    }

    @KeepForSdk
    public PackageInfo f(String str, int i10) throws PackageManager.NameNotFoundException {
        return this.f7670a.getPackageManager().getPackageInfo(str, i10);
    }

    @KeepForSdk
    public boolean g() {
        String nameForUid;
        if (Binder.getCallingUid() == Process.myUid()) {
            return InstantApps.a(this.f7670a);
        }
        if (!PlatformVersion.j() || (nameForUid = this.f7670a.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) {
            return false;
        }
        return this.f7670a.getPackageManager().isInstantApp(nameForUid);
    }

    @TargetApi(19)
    public final boolean h(int i10, String str) {
        if (PlatformVersion.e()) {
            try {
                AppOpsManager appOpsManager = (AppOpsManager) this.f7670a.getSystemService("appops");
                if (appOpsManager == null) {
                    throw new NullPointerException("context.getSystemService(Context.APP_OPS_SERVICE) is null");
                }
                appOpsManager.checkPackage(i10, str);
                return true;
            } catch (SecurityException unused) {
                return false;
            }
        }
        String[] packagesForUid = this.f7670a.getPackageManager().getPackagesForUid(i10);
        if (str != null && packagesForUid != null) {
            for (String str2 : packagesForUid) {
                if (str.equals(str2)) {
                    return true;
                }
            }
        }
        return false;
    }
}
