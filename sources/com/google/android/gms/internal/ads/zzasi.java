package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzasi extends zzasm {
    public zzasi(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11) {
        super(zzaqxVar, "1vYYgGa1kSZn3v+ZOQuFaiTzDZd9yTFr5T4txRDl4On2u8cPqYe1RveVsleWcOe5", "9xUiBAiiy8Ja1KXne+aVhWFydz8zlt4gmIBXdZB7YyQ=", zzamvVar, i10, 48);
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        this.f9858e.Z(3);
        boolean zBooleanValue = ((Boolean) this.f9859f.invoke(null, this.f9855b.b())).booleanValue();
        synchronized (this.f9858e) {
            if (zBooleanValue) {
                this.f9858e.Z(2);
            } else {
                this.f9858e.Z(1);
            }
        }
    }
}
