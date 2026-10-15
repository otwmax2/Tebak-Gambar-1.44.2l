package com.google.android.gms.internal.firebase_messaging;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import s6.b;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zze {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzae f22997a;

    static {
        zzad zzadVar = new zzad();
        zzd.f22996a.a(zzadVar);
        f22997a = zzadVar.b();
    }

    private zze() {
    }

    public static byte[] a(Object obj) {
        zzae zzaeVar = f22997a;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            zzaeVar.a(obj, byteArrayOutputStream);
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }

    public abstract b b();
}
