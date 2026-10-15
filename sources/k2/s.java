package k2;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.ParcelFileDescriptor;
import java.io.IOException;

/* JADX INFO: compiled from: VideoBitmapDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public class s implements k2.a<ParcelFileDescriptor> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final a f31367c = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f31368a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f31369b;

    /* JADX INFO: compiled from: VideoBitmapDecoder.java */
    static class a {
        a() {
        }

        public MediaMetadataRetriever a() {
            return new MediaMetadataRetriever();
        }
    }

    public s() {
        this(f31367c, -1);
    }

    public Bitmap b(ParcelFileDescriptor parcelFileDescriptor, c2.c cVar, int i10, int i11, z1.a aVar) throws IOException {
        MediaMetadataRetriever mediaMetadataRetrieverA = this.f31368a.a();
        mediaMetadataRetrieverA.setDataSource(parcelFileDescriptor.getFileDescriptor());
        int i12 = this.f31369b;
        Bitmap frameAtTime = i12 >= 0 ? mediaMetadataRetrieverA.getFrameAtTime(i12) : mediaMetadataRetrieverA.getFrameAtTime();
        mediaMetadataRetrieverA.release();
        parcelFileDescriptor.close();
        return frameAtTime;
    }

    s(a aVar, int i10) {
        this.f31368a = aVar;
        this.f31369b = i10;
    }
}
