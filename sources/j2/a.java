package j2;

import com.vungle.mediation.BuildConfig;
import java.io.OutputStream;

/* JADX INFO: compiled from: NullEncoder.java */
/* JADX INFO: loaded from: classes.dex */
public class a<T> implements z1.b<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final a<?> f30657a = new a<>();

    public static <T> z1.b<T> c() {
        return f30657a;
    }

    @Override // z1.b
    public String a() {
        return BuildConfig.FLAVOR;
    }

    @Override // z1.b
    public boolean b(T t10, OutputStream outputStream) {
        return false;
    }
}
