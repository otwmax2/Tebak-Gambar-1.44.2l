package k2;

import android.graphics.Bitmap;
import android.util.Log;
import java.io.OutputStream;

/* JADX INFO: compiled from: BitmapEncoder.java */
/* JADX INFO: loaded from: classes.dex */
public class b implements z1.f<Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Bitmap.CompressFormat f31308a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f31309b;

    public b() {
        this(null, 90);
    }

    private Bitmap.CompressFormat d(Bitmap bitmap) {
        Bitmap.CompressFormat compressFormat = this.f31308a;
        return compressFormat != null ? compressFormat : bitmap.hasAlpha() ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
    }

    @Override // z1.b
    public String a() {
        return "BitmapEncoder.com.bumptech.glide.load.resource.bitmap";
    }

    @Override // z1.b
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean b(b2.l<Bitmap> lVar, OutputStream outputStream) {
        Bitmap bitmap = lVar.get();
        long jB = x2.d.b();
        Bitmap.CompressFormat compressFormatD = d(bitmap);
        bitmap.compress(compressFormatD, this.f31309b, outputStream);
        if (!Log.isLoggable("BitmapEncoder", 2)) {
            return true;
        }
        Log.v("BitmapEncoder", "Compressed with type: " + compressFormatD + " of size " + x2.h.f(bitmap) + " in " + x2.d.a(jB));
        return true;
    }

    public b(Bitmap.CompressFormat compressFormat, int i10) {
        this.f31308a = compressFormat;
        this.f31309b = i10;
    }
}
