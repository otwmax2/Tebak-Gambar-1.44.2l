package g2;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.InputStream;
import java.util.Objects;

/* JADX INFO: compiled from: ImageVideoModelLoader.java */
/* JADX INFO: loaded from: classes.dex */
public class f<A> implements l<A, g> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l<A, InputStream> f29808a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l<A, ParcelFileDescriptor> f29809b;

    /* JADX INFO: compiled from: ImageVideoModelLoader.java */
    static class a implements a2.c<g> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a2.c<InputStream> f29810a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final a2.c<ParcelFileDescriptor> f29811b;

        public a(a2.c<InputStream> cVar, a2.c<ParcelFileDescriptor> cVar2) {
            this.f29810a = cVar;
            this.f29811b = cVar2;
        }

        @Override // a2.c
        public String a() {
            a2.c<InputStream> cVar = this.f29810a;
            return cVar != null ? cVar.a() : this.f29811b.a();
        }

        @Override // a2.c
        public void c() {
            a2.c<InputStream> cVar = this.f29810a;
            if (cVar != null) {
                cVar.c();
            }
            a2.c<ParcelFileDescriptor> cVar2 = this.f29811b;
            if (cVar2 != null) {
                cVar2.c();
            }
        }

        @Override // a2.c
        public void cancel() {
            a2.c<InputStream> cVar = this.f29810a;
            if (cVar != null) {
                cVar.cancel();
            }
            a2.c<ParcelFileDescriptor> cVar2 = this.f29811b;
            if (cVar2 != null) {
                cVar2.cancel();
            }
        }

        @Override // a2.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public g b(v1.i iVar) throws Exception {
            InputStream inputStreamB;
            a2.c<InputStream> cVar = this.f29810a;
            ParcelFileDescriptor parcelFileDescriptorB = null;
            if (cVar != null) {
                try {
                    inputStreamB = cVar.b(iVar);
                } catch (Exception e10) {
                    if (Log.isLoggable("IVML", 2)) {
                        Log.v("IVML", "Exception fetching input stream, trying ParcelFileDescriptor", e10);
                    }
                    if (this.f29811b == null) {
                        throw e10;
                    }
                    inputStreamB = null;
                }
            } else {
                inputStreamB = null;
            }
            a2.c<ParcelFileDescriptor> cVar2 = this.f29811b;
            if (cVar2 != null) {
                try {
                    parcelFileDescriptorB = cVar2.b(iVar);
                } catch (Exception e11) {
                    if (Log.isLoggable("IVML", 2)) {
                        Log.v("IVML", "Exception fetching ParcelFileDescriptor", e11);
                    }
                    if (inputStreamB == null) {
                        throw e11;
                    }
                }
            }
            return new g(inputStreamB, parcelFileDescriptorB);
        }
    }

    public f(l<A, InputStream> lVar, l<A, ParcelFileDescriptor> lVar2) {
        if (lVar == null) {
            Objects.requireNonNull(lVar2, "At least one of streamLoader and fileDescriptorLoader must be non null");
        }
        this.f29808a = lVar;
        this.f29809b = lVar2;
    }

    @Override // g2.l
    public a2.c<g> a(A a10, int i10, int i11) {
        l<A, InputStream> lVar = this.f29808a;
        a2.c<InputStream> cVarA = lVar != null ? lVar.a(a10, i10, i11) : null;
        l<A, ParcelFileDescriptor> lVar2 = this.f29809b;
        a2.c<ParcelFileDescriptor> cVarA2 = lVar2 != null ? lVar2.a(a10, i10, i11) : null;
        if (cVarA == null && cVarA2 == null) {
            return null;
        }
        return new a(cVarA, cVarA2);
    }
}
