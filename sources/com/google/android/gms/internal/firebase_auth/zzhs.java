package com.google.android.gms.internal.firebase_auth;

import com.google.android.gms.internal.firebase_auth.zzif;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public class zzhs {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile zzhs f22683b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzhs f22684c = new zzhs(true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<zza, zzif.zzd<?, ?>> f22685a;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    static final class zza {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f22686a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f22687b;

        public final boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return this.f22686a == zzaVar.f22686a && this.f22687b == zzaVar.f22687b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f22686a) * 65535) + this.f22687b;
        }
    }

    zzhs() {
        this.f22685a = new HashMap();
    }

    public static zzhs a() {
        zzhs zzhsVar = f22683b;
        if (zzhsVar == null) {
            synchronized (zzhs.class) {
                zzhsVar = f22683b;
                if (zzhsVar == null) {
                    zzhsVar = f22684c;
                    f22683b = zzhsVar;
                }
            }
        }
        return zzhsVar;
    }

    private zzhs(boolean z10) {
        this.f22685a = Collections.emptyMap();
    }
}
