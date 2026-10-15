package com.google.android.gms.internal.firebase_messaging;

import java.lang.annotation.Annotation;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzu implements zzz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f23009a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzy f23010b;

    zzu(int i10, zzy zzyVar) {
        this.f23009a = i10;
        this.f23010b = zzyVar;
    }

    @Override // java.lang.annotation.Annotation
    public final Class<? extends Annotation> annotationType() {
        return zzz.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzz)) {
            return false;
        }
        zzz zzzVar = (zzz) obj;
        return this.f23009a == zzzVar.zza() && this.f23010b.equals(zzzVar.zzb());
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return (this.f23009a ^ 14552422) + (this.f23010b.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f23009a + "intEncoding=" + this.f23010b + ')';
    }

    @Override // com.google.android.gms.internal.firebase_messaging.zzz
    public final int zza() {
        return this.f23009a;
    }

    @Override // com.google.android.gms.internal.firebase_messaging.zzz
    public final zzy zzb() {
        return this.f23010b;
    }
}
