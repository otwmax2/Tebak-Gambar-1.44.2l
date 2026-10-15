package k2;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: ImageVideoBitmapDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public class m implements z1.e<g2.g, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z1.e<InputStream, Bitmap> f31348a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final z1.e<ParcelFileDescriptor, Bitmap> f31349b;

    public m(z1.e<InputStream, Bitmap> eVar, z1.e<ParcelFileDescriptor, Bitmap> eVar2) {
        this.f31348a = eVar;
        this.f31349b = eVar2;
    }

    @Override // z1.e
    public String a() {
        return "ImageVideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap";
    }

    @Override // z1.e
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public b2.l<Bitmap> b(g2.g gVar, int i10, int i11) throws IOException {
        b2.l<Bitmap> lVarB;
        ParcelFileDescriptor parcelFileDescriptorA;
        InputStream inputStreamB = gVar.b();
        if (inputStreamB != null) {
            try {
                lVarB = this.f31348a.b(inputStreamB, i10, i11);
            } catch (IOException e10) {
                if (Log.isLoggable("ImageVideoDecoder", 2)) {
                    Log.v("ImageVideoDecoder", "Failed to load image from stream, trying FileDescriptor", e10);
                }
                lVarB = null;
            }
        } else {
            lVarB = null;
        }
        return (lVarB != null || (parcelFileDescriptorA = gVar.a()) == null) ? lVarB : this.f31349b.b(parcelFileDescriptorA, i10, i11);
    }
}
