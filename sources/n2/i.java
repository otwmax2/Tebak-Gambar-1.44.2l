package n2;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.vungle.mediation.BuildConfig;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;
import x1.a;

/* JADX INFO: compiled from: GifResourceDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public class i implements z1.e<InputStream, n2.b> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final b f32417f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final a f32418g = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f32419a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f32420b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c2.c f32421c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f32422d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final n2.a f32423e;

    /* JADX INFO: compiled from: GifResourceDecoder.java */
    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Queue<x1.a> f32424a = x2.h.d(0);

        a() {
        }

        public synchronized x1.a a(a.InterfaceC0293a interfaceC0293a) {
            x1.a aVarPoll;
            aVarPoll = this.f32424a.poll();
            if (aVarPoll == null) {
                aVarPoll = new x1.a(interfaceC0293a);
            }
            return aVarPoll;
        }

        public synchronized void b(x1.a aVar) {
            aVar.b();
            this.f32424a.offer(aVar);
        }
    }

    /* JADX INFO: compiled from: GifResourceDecoder.java */
    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Queue<x1.d> f32425a = x2.h.d(0);

        b() {
        }

        public synchronized x1.d a(byte[] bArr) {
            x1.d dVarPoll;
            dVarPoll = this.f32425a.poll();
            if (dVarPoll == null) {
                dVarPoll = new x1.d();
            }
            return dVarPoll.o(bArr);
        }

        public synchronized void b(x1.d dVar) {
            dVar.a();
            this.f32425a.offer(dVar);
        }
    }

    public i(Context context, c2.c cVar) {
        this(context, cVar, f32417f, f32418g);
    }

    private d d(byte[] bArr, int i10, int i11, x1.d dVar, x1.a aVar) {
        Bitmap bitmapE;
        x1.c cVarC = dVar.c();
        if (cVarC.a() <= 0 || cVarC.b() != 0 || (bitmapE = e(aVar, cVarC, bArr)) == null) {
            return null;
        }
        return new d(new n2.b(this.f32419a, this.f32423e, this.f32421c, j2.d.c(), i10, i11, cVarC, bArr, bitmapE));
    }

    private Bitmap e(x1.a aVar, x1.c cVar, byte[] bArr) {
        aVar.n(cVar, bArr);
        aVar.a();
        return aVar.i();
    }

    private static byte[] f(InputStream inputStream) {
        byte[] bArr;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            bArr = new byte[16384];
        } catch (IOException e10) {
            Log.w("GifResourceDecoder", "Error reading data from stream", e10);
        }
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                break;
            }
            byteArrayOutputStream.write(bArr, 0, i10);
            return byteArrayOutputStream.toByteArray();
        }
        byteArrayOutputStream.flush();
        return byteArrayOutputStream.toByteArray();
    }

    @Override // z1.e
    public String a() {
        return BuildConfig.FLAVOR;
    }

    @Override // z1.e
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public d b(InputStream inputStream, int i10, int i11) {
        byte[] bArrF = f(inputStream);
        x1.d dVarA = this.f32420b.a(bArrF);
        x1.a aVarA = this.f32422d.a(this.f32423e);
        try {
            return d(bArrF, i10, i11, dVarA, aVarA);
        } finally {
            this.f32420b.b(dVarA);
            this.f32422d.b(aVarA);
        }
    }

    i(Context context, c2.c cVar, b bVar, a aVar) {
        this.f32419a = context.getApplicationContext();
        this.f32421c = cVar;
        this.f32422d = aVar;
        this.f32423e = new n2.a(cVar);
        this.f32420b = bVar;
    }
}
