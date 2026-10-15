package com.google.android.gms.internal.ads;

import android.provider.Settings;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzark extends zzasm {
    public zzark(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11) {
        super(zzaqxVar, "/ZAb7KorQmWKePlIS1me8K7MD7h0ktYv6a7eQSuPpVWqAkHhSCd1Ee0//urPm/Fl", "19q79G2Hoay9HG8W07mTTjUi2VQ2m7mmzg4dFY+yKc8=", zzamvVar, i10, 49);
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        this.f9858e.R(3);
        try {
            int i10 = 1;
            boolean zBooleanValue = ((Boolean) this.f9859f.invoke(null, this.f9855b.b())).booleanValue();
            zzamv zzamvVar = this.f9858e;
            if (true == zBooleanValue) {
                i10 = 2;
            }
            zzamvVar.R(i10);
        } catch (InvocationTargetException e10) {
            if (!(e10.getTargetException() instanceof Settings.SettingNotFoundException)) {
                throw e10;
            }
        }
    }
}
