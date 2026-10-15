package com.google.android.gms.internal.firebase_auth;

import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes.dex */
final class zzbp<K, V> extends zzbl<K, V> {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    static final zzbl<Object, Object> f22453v = new zzbp(null, new Object[0], 0);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final transient Object f22454s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final transient Object[] f22455t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final transient int f22456u;

    private zzbp(Object obj, Object[] objArr, int i10) {
        this.f22454s = obj;
        this.f22455t = objArr;
        this.f22456u = i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0080, code lost:
    
        r2[r6] = (byte) r3;
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c1, code lost:
    
        r2[r6] = (short) r3;
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00f6, code lost:
    
        r2[r7] = r4;
        r1 = r1 + 1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v3, types: [int[]] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r8v0, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static <K, V> com.google.android.gms.internal.firebase_auth.zzbp<K, V> e(int r10, java.lang.Object[] r11) {
        /*
            Method dump skipped, instruction units count: 283
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_auth.zzbp.e(int, java.lang.Object[]):com.google.android.gms.internal.firebase_auth.zzbp");
    }

    private static IllegalArgumentException f(Object obj, Object obj2, Object[] objArr, int i10) {
        String strValueOf = String.valueOf(obj);
        String strValueOf2 = String.valueOf(obj2);
        String strValueOf3 = String.valueOf(objArr[i10]);
        String strValueOf4 = String.valueOf(objArr[i10 ^ 1]);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 39 + strValueOf2.length() + strValueOf3.length() + strValueOf4.length());
        sb.append("Multiple entries with same key: ");
        sb.append(strValueOf);
        sb.append("=");
        sb.append(strValueOf2);
        sb.append(" and ");
        sb.append(strValueOf3);
        sb.append("=");
        sb.append(strValueOf4);
        return new IllegalArgumentException(sb.toString());
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbl
    final zzbn<Map.Entry<K, V>> b() {
        return new zzbo(this, this.f22455t, 0, this.f22456u);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbl
    final zzbn<K> c() {
        return new zzbq(this, new zzbt(this.f22455t, 0, this.f22456u));
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbl
    final zzbh<V> d() {
        return new zzbt(this.f22455t, 1, this.f22456u);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbl, java.util.Map
    @NullableDecl
    public final V get(@NullableDecl Object obj) {
        Object obj2 = this.f22454s;
        Object[] objArr = this.f22455t;
        int i10 = this.f22456u;
        if (obj == null) {
            return null;
        }
        if (i10 == 1) {
            if (objArr[0].equals(obj)) {
                return (V) objArr[1];
            }
            return null;
        }
        if (obj2 == null) {
            return null;
        }
        if (obj2 instanceof byte[]) {
            byte[] bArr = (byte[]) obj2;
            int length = bArr.length - 1;
            int iA = zzbe.a(obj.hashCode());
            while (true) {
                int i11 = iA & length;
                int i12 = bArr[i11] & 255;
                if (i12 == 255) {
                    return null;
                }
                if (objArr[i12].equals(obj)) {
                    return (V) objArr[i12 ^ 1];
                }
                iA = i11 + 1;
            }
        } else if (obj2 instanceof short[]) {
            short[] sArr = (short[]) obj2;
            int length2 = sArr.length - 1;
            int iA2 = zzbe.a(obj.hashCode());
            while (true) {
                int i13 = iA2 & length2;
                int i14 = sArr[i13] & 65535;
                if (i14 == 65535) {
                    return null;
                }
                if (objArr[i14].equals(obj)) {
                    return (V) objArr[i14 ^ 1];
                }
                iA2 = i13 + 1;
            }
        } else {
            int[] iArr = (int[]) obj2;
            int length3 = iArr.length - 1;
            int iA3 = zzbe.a(obj.hashCode());
            while (true) {
                int i15 = iA3 & length3;
                int i16 = iArr[i15];
                if (i16 == -1) {
                    return null;
                }
                if (objArr[i16].equals(obj)) {
                    return (V) objArr[i16 ^ 1];
                }
                iA3 = i15 + 1;
            }
        }
    }

    @Override // java.util.Map
    public final int size() {
        return this.f22456u;
    }
}
