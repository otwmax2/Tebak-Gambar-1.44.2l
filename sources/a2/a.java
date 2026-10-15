package a2;

import android.content.res.AssetManager;
import android.util.Log;
import java.io.IOException;

/* JADX INFO: compiled from: AssetPathFetcher.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a<T> implements c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f30a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AssetManager f31b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private T f32c;

    public a(AssetManager assetManager, String str) {
        this.f31b = assetManager;
        this.f30a = str;
    }

    @Override // a2.c
    public String a() {
        return this.f30a;
    }

    @Override // a2.c
    public T b(v1.i iVar) throws Exception {
        T tE = e(this.f31b, this.f30a);
        this.f32c = tE;
        return tE;
    }

    @Override // a2.c
    public void c() {
        T t10 = this.f32c;
        if (t10 == null) {
            return;
        }
        try {
            d(t10);
        } catch (IOException e10) {
            if (Log.isLoggable("AssetUriFetcher", 2)) {
                Log.v("AssetUriFetcher", "Failed to close data", e10);
            }
        }
    }

    @Override // a2.c
    public void cancel() {
    }

    protected abstract void d(T t10) throws IOException;

    protected abstract T e(AssetManager assetManager, String str) throws IOException;
}
