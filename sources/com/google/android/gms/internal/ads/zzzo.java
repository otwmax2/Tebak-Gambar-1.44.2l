package com.google.android.gms.internal.ads;

import java.lang.reflect.Constructor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzzo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzzn f21201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f21202b = new AtomicBoolean(false);

    public zzzo(zzzn zzznVar) {
        this.f21201a = zzznVar;
    }

    public final zzzu a(Object... objArr) {
        Constructor constructorZza;
        synchronized (this.f21202b) {
            if (!this.f21202b.get()) {
                try {
                    constructorZza = this.f21201a.zza();
                } catch (ClassNotFoundException unused) {
                    this.f21202b.set(true);
                    constructorZza = null;
                } catch (Exception e10) {
                    throw new RuntimeException("Error instantiating extension", e10);
                }
            }
            constructorZza = null;
        }
        if (constructorZza == null) {
            return null;
        }
        try {
            return (zzzu) constructorZza.newInstance(objArr);
        } catch (Exception e11) {
            throw new IllegalStateException("Unexpected error creating extractor", e11);
        }
    }
}
