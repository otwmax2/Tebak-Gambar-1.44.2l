package m2;

import b2.l;
import com.vungle.mediation.BuildConfig;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import z1.e;

/* JADX INFO: compiled from: FileToStreamDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public class c<T> implements e<File, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final a f32121c = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e<InputStream, T> f32122a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f32123b;

    /* JADX INFO: compiled from: FileToStreamDecoder.java */
    static class a {
        a() {
        }

        public InputStream a(File file) throws FileNotFoundException {
            return new FileInputStream(file);
        }
    }

    public c(e<InputStream, T> eVar) {
        this(eVar, f32121c);
    }

    @Override // z1.e
    public String a() {
        return BuildConfig.FLAVOR;
    }

    @Override // z1.e
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public l<T> b(File file, int i10, int i11) throws IOException {
        InputStream inputStreamA = null;
        try {
            inputStreamA = this.f32123b.a(file);
            l<T> lVarB = this.f32122a.b(inputStreamA, i10, i11);
            if (inputStreamA != null) {
                try {
                    inputStreamA.close();
                } catch (IOException unused) {
                }
            }
            return lVarB;
        } catch (Throwable th) {
            if (inputStreamA != null) {
                try {
                    inputStreamA.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    c(e<InputStream, T> eVar, a aVar) {
        this.f32122a = eVar;
        this.f32123b = aVar;
    }
}
