package e9;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: compiled from: PreferenceStoreImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SharedPreferences f28968a;

    public b(Context context, String str) {
        if (context == null) {
            throw new IllegalArgumentException("Context must not be null");
        }
        this.f28968a = context.getSharedPreferences(str, 0);
    }

    @Override // e9.a
    public SharedPreferences.Editor a() {
        return this.f28968a.edit();
    }

    @Override // e9.a
    public boolean b(SharedPreferences.Editor editor) {
        editor.apply();
        return true;
    }

    @Override // e9.a
    public SharedPreferences get() {
        return this.f28968a;
    }
}
