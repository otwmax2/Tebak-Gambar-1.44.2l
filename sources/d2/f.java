package d2;

import android.content.Context;
import d2.d;
import java.io.File;

/* JADX INFO: compiled from: InternalCacheDiskCacheFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class f extends d {

    /* JADX INFO: compiled from: InternalCacheDiskCacheFactory.java */
    class a implements d.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f28617a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f28618b;

        a(Context context, String str) {
            this.f28617a = context;
            this.f28618b = str;
        }

        @Override // d2.d.a
        public File getCacheDirectory() {
            File cacheDir = this.f28617a.getCacheDir();
            if (cacheDir == null) {
                return null;
            }
            return this.f28618b != null ? new File(cacheDir, this.f28618b) : cacheDir;
        }
    }

    public f(Context context) {
        this(context, "image_manager_disk_cache", 262144000);
    }

    public f(Context context, int i10) {
        this(context, "image_manager_disk_cache", i10);
    }

    public f(Context context, String str, int i10) {
        super(new a(context, str), i10);
    }
}
