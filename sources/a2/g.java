package a2;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: compiled from: LocalUriFetcher.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class g<T> implements c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Uri f41a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f42b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private T f43c;

    public g(Context context, Uri uri) {
        this.f42b = context.getApplicationContext();
        this.f41a = uri;
    }

    @Override // a2.c
    public String a() {
        return this.f41a.toString();
    }

    @Override // a2.c
    public final T b(v1.i iVar) throws Exception {
        T tE = e(this.f41a, this.f42b.getContentResolver());
        this.f43c = tE;
        return tE;
    }

    @Override // a2.c
    public void c() {
        T t10 = this.f43c;
        if (t10 != null) {
            try {
                d(t10);
            } catch (IOException e10) {
                if (Log.isLoggable("LocalUriFetcher", 2)) {
                    Log.v("LocalUriFetcher", "failed to close data", e10);
                }
            }
        }
    }

    @Override // a2.c
    public void cancel() {
    }

    protected abstract void d(T t10) throws IOException;

    protected abstract T e(Uri uri, ContentResolver contentResolver) throws FileNotFoundException;
}
