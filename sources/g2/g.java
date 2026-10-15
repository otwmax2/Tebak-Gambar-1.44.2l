package g2;

import android.os.ParcelFileDescriptor;
import java.io.InputStream;

/* JADX INFO: compiled from: ImageVideoWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InputStream f29812a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ParcelFileDescriptor f29813b;

    public g(InputStream inputStream, ParcelFileDescriptor parcelFileDescriptor) {
        this.f29812a = inputStream;
        this.f29813b = parcelFileDescriptor;
    }

    public ParcelFileDescriptor a() {
        return this.f29813b;
    }

    public InputStream b() {
        return this.f29812a;
    }
}
