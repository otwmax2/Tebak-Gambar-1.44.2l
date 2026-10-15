package com.google.android.gms.internal.drive;

import com.google.android.gms.internal.drive.zzkk;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class zzjx {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Class<?> f22112b = a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final zzjx f22113c = new zzjx(true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<zza, zzkk.zzd<?, ?>> f22114a;

    static final class zza {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f22115a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f22116b;

        public final boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return this.f22115a == zzaVar.f22115a && this.f22116b == zzaVar.f22116b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f22115a) * 65535) + this.f22116b;
        }
    }

    zzjx() {
        this.f22114a = new HashMap();
    }

    private static Class<?> a() {
        try {
            return Class.forName("com.google.protobuf.Extension");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static zzjx b() {
        return zzjw.b();
    }

    private zzjx(boolean z10) {
        this.f22114a = Collections.emptyMap();
    }
}
