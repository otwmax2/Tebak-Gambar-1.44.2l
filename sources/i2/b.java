package i2;

import android.content.Context;
import com.vungle.mediation.BuildConfig;
import g2.l;
import g2.m;
import java.io.InputStream;

/* JADX INFO: compiled from: StreamByteArrayLoader.java */
/* JADX INFO: loaded from: classes.dex */
public class b implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f30393a;

    /* JADX INFO: compiled from: StreamByteArrayLoader.java */
    public static class a implements m<byte[], InputStream> {
        @Override // g2.m
        public l<byte[], InputStream> a(Context context, g2.c cVar) {
            return new b();
        }

        @Override // g2.m
        public void b() {
        }
    }

    public b() {
        this(BuildConfig.FLAVOR);
    }

    @Override // g2.l
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public a2.c<InputStream> a(byte[] bArr, int i10, int i11) {
        return new a2.b(bArr, this.f30393a);
    }

    @Deprecated
    public b(String str) {
        this.f30393a = str;
    }
}
