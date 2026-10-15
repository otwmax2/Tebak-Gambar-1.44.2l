package v4;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class a0<T> implements c0, y {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f35798c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile c0<T> f35799a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Object f35800b = f35798c;

    private a0(c0<T> c0Var) {
        this.f35799a = c0Var;
    }

    public static <P extends c0<T>, T> y<T> a(P p10) {
        if (p10 instanceof y) {
            return (y) p10;
        }
        Objects.requireNonNull(p10);
        return new a0(p10);
    }

    public static <P extends c0<T>, T> c0<T> b(P p10) {
        Objects.requireNonNull(p10);
        return p10 instanceof a0 ? p10 : new a0(p10);
    }

    @Override // v4.c0
    public final T zza() {
        T tZza = (T) this.f35800b;
        Object obj = f35798c;
        if (tZza == obj) {
            synchronized (this) {
                tZza = (T) this.f35800b;
                if (tZza == obj) {
                    tZza = this.f35799a.zza();
                    Object obj2 = this.f35800b;
                    if (obj2 != obj && obj2 != tZza) {
                        String strValueOf = String.valueOf(obj2);
                        String strValueOf2 = String.valueOf(tZza);
                        StringBuilder sb = new StringBuilder(strValueOf.length() + 118 + strValueOf2.length());
                        sb.append("Scoped provider was invoked recursively returning different results: ");
                        sb.append(strValueOf);
                        sb.append(" & ");
                        sb.append(strValueOf2);
                        sb.append(". This is likely due to a circular dependency.");
                        throw new IllegalStateException(sb.toString());
                    }
                    this.f35800b = tZza;
                    this.f35799a = null;
                }
            }
        }
        return tZza;
    }
}
