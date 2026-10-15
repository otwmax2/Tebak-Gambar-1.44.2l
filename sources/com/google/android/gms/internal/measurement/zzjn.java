package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f23608a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f23609b;

    zzjn(Object obj, int i10) {
        this.f23608a = obj;
        this.f23609b = i10;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzjn)) {
            return false;
        }
        zzjn zzjnVar = (zzjn) obj;
        return this.f23608a == zzjnVar.f23608a && this.f23609b == zzjnVar.f23609b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f23608a) * 65535) + this.f23609b;
    }
}
