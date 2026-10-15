package s0;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.LinkedHashMap;
import java.util.Map;
import t9.m;

/* JADX INFO: compiled from: CreationExtras.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<b<?>, Object> f34457a = new LinkedHashMap();

    /* JADX INFO: renamed from: s0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CreationExtras.kt */
    public static final class C0227a extends a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final C0227a f34458b = new C0227a();

        private C0227a() {
        }

        @Override // s0.a
        public <T> T a(b<T> bVar) {
            m.e(bVar, SDKConstants.PARAM_KEY);
            return null;
        }
    }

    /* JADX INFO: compiled from: CreationExtras.kt */
    public interface b<T> {
    }

    public abstract <T> T a(b<T> bVar);

    public final Map<b<?>, Object> b() {
        return this.f34457a;
    }
}
