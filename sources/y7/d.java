package y7;

import android.annotation.SuppressLint;
import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static d f37026b = new d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f37027a;

    private d() {
    }

    public static d a() {
        return f37026b;
    }

    public void b(Context context) {
        this.f37027a = context != null ? context.getApplicationContext() : null;
    }

    public Context c() {
        return this.f37027a;
    }
}
