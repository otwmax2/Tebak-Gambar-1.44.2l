package z2;

import android.os.Bundle;
import android.os.Parcelable;
import java.io.Serializable;

/* JADX INFO: compiled from: Bundler.java */
/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bundle f37198a;

    private a(Bundle bundle) {
        this.f37198a = bundle;
    }

    public static a a() {
        return new a(new Bundle());
    }

    public Bundle b() {
        return this.f37198a;
    }

    public a c(String str, int i10) {
        this.f37198a.putInt(str, i10);
        return this;
    }

    public a d(String str, Parcelable parcelable) {
        this.f37198a.putParcelable(str, parcelable);
        return this;
    }

    public a e(String str, Serializable serializable) {
        this.f37198a.putSerializable(str, serializable);
        return this;
    }

    public a f(String str, boolean z10) {
        this.f37198a.putBoolean(str, z10);
        return this;
    }
}
