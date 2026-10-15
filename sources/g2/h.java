package g2;

import android.os.ParcelFileDescriptor;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: ImageVideoWrapperEncoder.java */
/* JADX INFO: loaded from: classes.dex */
public class h implements z1.b<g> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z1.b<InputStream> f29814a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final z1.b<ParcelFileDescriptor> f29815b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f29816c;

    public h(z1.b<InputStream> bVar, z1.b<ParcelFileDescriptor> bVar2) {
        this.f29814a = bVar;
        this.f29815b = bVar2;
    }

    @Override // z1.b
    public String a() {
        if (this.f29816c == null) {
            this.f29816c = this.f29814a.a() + this.f29815b.a();
        }
        return this.f29816c;
    }

    @Override // z1.b
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean b(g gVar, OutputStream outputStream) {
        return gVar.b() != null ? this.f29814a.b(gVar.b(), outputStream) : this.f29815b.b(gVar.a(), outputStream);
    }
}
