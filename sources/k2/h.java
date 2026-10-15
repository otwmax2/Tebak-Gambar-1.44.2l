package k2;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import java.io.IOException;

/* JADX INFO: compiled from: FileDescriptorBitmapDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public class h implements z1.e<ParcelFileDescriptor, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s f31322a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c2.c f31323b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private z1.a f31324c;

    public h(c2.c cVar, z1.a aVar) {
        this(new s(), cVar, aVar);
    }

    @Override // z1.e
    public String a() {
        return "FileDescriptorBitmapDecoder.com.bumptech.glide.load.data.bitmap";
    }

    @Override // z1.e
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public b2.l<Bitmap> b(ParcelFileDescriptor parcelFileDescriptor, int i10, int i11) throws IOException {
        return c.d(this.f31322a.b(parcelFileDescriptor, this.f31323b, i10, i11, this.f31324c), this.f31323b);
    }

    public h(s sVar, c2.c cVar, z1.a aVar) {
        this.f31322a = sVar;
        this.f31323b = cVar;
        this.f31324c = aVar;
    }
}
