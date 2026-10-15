package s6;

import com.google.android.gms.internal.firebase_messaging.zze;
import com.google.android.gms.internal.firebase_messaging.zzz;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final b f35017b = new a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s6.a f35018a;

    /* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private s6.a f35019a = null;

        a() {
        }

        public b a() {
            return new b(this.f35019a);
        }

        public a b(s6.a aVar) {
            this.f35019a = aVar;
            return this;
        }
    }

    b(s6.a aVar) {
        this.f35018a = aVar;
    }

    public static a b() {
        return new a();
    }

    @zzz(zza = 1)
    public s6.a a() {
        return this.f35018a;
    }

    public byte[] c() {
        return zze.a(this);
    }
}
