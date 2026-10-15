package r1;

import android.content.ComponentName;
import android.content.Context;

/* JADX INFO: compiled from: PackageManagerHelper.java */
/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f34166a = i1.j.f("PackageManagerHelper");

    public static void a(Context context, Class<?> cls, boolean z10) {
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls.getName()), z10 ? 1 : 2, 1);
            i1.j jVarC = i1.j.c();
            String str = f34166a;
            Object[] objArr = new Object[2];
            objArr[0] = cls.getName();
            objArr[1] = z10 ? "enabled" : "disabled";
            jVarC.a(str, String.format("%s %s", objArr), new Throwable[0]);
        } catch (Exception e10) {
            i1.j jVarC2 = i1.j.c();
            String str2 = f34166a;
            Object[] objArr2 = new Object[2];
            objArr2[0] = cls.getName();
            objArr2[1] = z10 ? "enabled" : "disabled";
            jVarC2.a(str2, String.format("%s could not be %s", objArr2), e10);
        }
    }
}
