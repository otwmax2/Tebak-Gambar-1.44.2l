package j2;

import b2.l;
import com.vungle.mediation.BuildConfig;
import java.io.OutputStream;
import z1.f;

/* JADX INFO: compiled from: NullResourceEncoder.java */
/* JADX INFO: loaded from: classes.dex */
public class b<T> implements f<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final b<?> f30658a = new b<>();

    public static <T> b<T> d() {
        return (b<T>) f30658a;
    }

    @Override // z1.b
    public String a() {
        return BuildConfig.FLAVOR;
    }

    @Override // z1.b
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean b(l<T> lVar, OutputStream outputStream) {
        return false;
    }
}
