package m2;

import b2.l;
import com.vungle.mediation.BuildConfig;
import g2.o;
import java.io.File;
import java.io.InputStream;
import z1.e;
import z1.f;

/* JADX INFO: compiled from: StreamFileDataLoadProvider.java */
/* JADX INFO: loaded from: classes.dex */
public class d implements s2.b<InputStream, File> {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final b f32124q = new b();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final e<File, File> f32125o = new m2.a();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final z1.b<InputStream> f32126p = new o();

    /* JADX INFO: compiled from: StreamFileDataLoadProvider.java */
    private static class b implements e<InputStream, File> {
        private b() {
        }

        @Override // z1.e
        public String a() {
            return BuildConfig.FLAVOR;
        }

        @Override // z1.e
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public l<File> b(InputStream inputStream, int i10, int i11) {
            throw new Error("You cannot decode a File from an InputStream by default, try either #diskCacheStratey(DiskCacheStrategy.SOURCE) to avoid this call or #decoder(ResourceDecoder) to replace this Decoder");
        }
    }

    @Override // s2.b
    public z1.b<InputStream> a() {
        return this.f32126p;
    }

    @Override // s2.b
    public f<File> d() {
        return j2.b.d();
    }

    @Override // s2.b
    public e<InputStream, File> f() {
        return f32124q;
    }

    @Override // s2.b
    public e<File, File> g() {
        return this.f32125o;
    }
}
