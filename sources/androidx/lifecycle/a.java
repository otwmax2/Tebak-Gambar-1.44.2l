package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;

/* JADX INFO: compiled from: AndroidViewModel.java */
/* JADX INFO: loaded from: classes.dex */
public class a extends g0 {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private Application f3490r;

    public a(Application application) {
        this.f3490r = application;
    }

    public <T extends Application> T j() {
        return (T) this.f3490r;
    }
}
