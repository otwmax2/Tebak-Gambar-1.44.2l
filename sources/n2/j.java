package n2;

import android.graphics.Bitmap;
import android.util.Log;
import b2.l;
import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.io.OutputStream;
import x1.a;

/* JADX INFO: compiled from: GifResourceEncoder.java */
/* JADX INFO: loaded from: classes.dex */
public class j implements z1.f<b> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final a f32426d = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a.InterfaceC0293a f32427a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c2.c f32428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f32429c;

    /* JADX INFO: compiled from: GifResourceEncoder.java */
    static class a {
        a() {
        }

        public x1.a a(a.InterfaceC0293a interfaceC0293a) {
            return new x1.a(interfaceC0293a);
        }

        public y1.a b() {
            return new y1.a();
        }

        public l<Bitmap> c(Bitmap bitmap, c2.c cVar) {
            return new k2.c(bitmap, cVar);
        }

        public x1.d d() {
            return new x1.d();
        }
    }

    public j(c2.c cVar) {
        this(cVar, f32426d);
    }

    private x1.a c(byte[] bArr) {
        x1.d dVarD = this.f32429c.d();
        dVarD.o(bArr);
        x1.c cVarC = dVarD.c();
        x1.a aVarA = this.f32429c.a(this.f32427a);
        aVarA.n(cVarC, bArr);
        aVarA.a();
        return aVarA;
    }

    private l<Bitmap> e(Bitmap bitmap, z1.g<Bitmap> gVar, b bVar) {
        l<Bitmap> lVarC = this.f32429c.c(bitmap, this.f32428b);
        l<Bitmap> lVarB = gVar.b(lVarC, bVar.getIntrinsicWidth(), bVar.getIntrinsicHeight());
        if (!lVarC.equals(lVarB)) {
            lVarC.b();
        }
        return lVarB;
    }

    private boolean f(byte[] bArr, OutputStream outputStream) {
        try {
            outputStream.write(bArr);
            return true;
        } catch (IOException e10) {
            if (Log.isLoggable("GifEncoder", 3)) {
                Log.d("GifEncoder", "Failed to write data to output stream in GifResourceEncoder", e10);
            }
            return false;
        }
    }

    @Override // z1.b
    public String a() {
        return BuildConfig.FLAVOR;
    }

    @Override // z1.b
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(l<b> lVar, OutputStream outputStream) {
        long jB = x2.d.b();
        b bVar = lVar.get();
        z1.g<Bitmap> gVarG = bVar.g();
        if (gVarG instanceof j2.d) {
            return f(bVar.d(), outputStream);
        }
        x1.a aVarC = c(bVar.d());
        y1.a aVarB = this.f32429c.b();
        if (!aVarB.h(outputStream)) {
            return false;
        }
        for (int i10 = 0; i10 < aVarC.f(); i10++) {
            l<Bitmap> lVarE = e(aVarC.i(), gVarG, bVar);
            try {
                if (!aVarB.a(lVarE.get())) {
                    return false;
                }
                aVarB.f(aVarC.e(aVarC.d()));
                aVarC.a();
                lVarE.b();
            } finally {
                lVarE.b();
            }
        }
        boolean zD = aVarB.d();
        if (Log.isLoggable("GifEncoder", 2)) {
            Log.v("GifEncoder", "Encoded gif with " + aVarC.f() + " frames and " + bVar.d().length + " bytes in " + x2.d.a(jB) + " ms");
        }
        return zD;
    }

    j(c2.c cVar, a aVar) {
        this.f32428b = cVar;
        this.f32427a = new n2.a(cVar);
        this.f32429c = aVar;
    }
}
