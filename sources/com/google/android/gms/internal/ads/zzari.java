package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzari extends zzasm {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Activity f9815i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final View f9816j;

    public zzari(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11, View view, Activity activity) {
        super(zzaqxVar, "igtIy1RPdtSwwFM0MzyB8nIIZ5v2CDGgVI3q8yVZqtR6IDXyW0WRS0Qe3gwz+vAY", "frdByYsbmru5qm4CvqXIK0tqT/G3yjsT+PIiwI69Mdg=", zzamvVar, i10, 62);
        this.f9816j = view;
        this.f9815i = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        if (this.f9816j == null) {
            return;
        }
        boolean zBooleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10249i2)).booleanValue();
        Object[] objArr = (Object[]) this.f9859f.invoke(null, this.f9816j, this.f9815i, Boolean.valueOf(zBooleanValue));
        synchronized (this.f9858e) {
            this.f9858e.b0(((Long) objArr[0]).longValue());
            this.f9858e.d0(((Long) objArr[1]).longValue());
            if (zBooleanValue) {
                this.f9858e.c0((String) objArr[2]);
            }
        }
    }
}
