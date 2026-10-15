package g1;

import android.view.ViewGroup;

/* JADX INFO: compiled from: Scene.java */
/* JADX INFO: loaded from: classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ViewGroup f29735a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Runnable f29736b;

    public static l b(ViewGroup viewGroup) {
        return (l) viewGroup.getTag(j.f29715c);
    }

    static void c(ViewGroup viewGroup, l lVar) {
        viewGroup.setTag(j.f29715c, lVar);
    }

    public void a() {
        Runnable runnable;
        if (b(this.f29735a) != this || (runnable = this.f29736b) == null) {
            return;
        }
        runnable.run();
    }
}
