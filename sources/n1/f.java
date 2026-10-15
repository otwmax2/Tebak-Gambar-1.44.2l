package n1;

import android.content.Context;
import android.os.Build;
import i1.j;
import i1.k;
import q1.p;

/* JADX INFO: compiled from: NetworkNotRoamingController.java */
/* JADX INFO: loaded from: classes.dex */
public class f extends c<m1.b> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f32372e = j.f("NetworkNotRoamingCtrlr");

    public f(Context context, s1.a aVar) {
        super(o1.g.c(context, aVar).d());
    }

    @Override // n1.c
    boolean b(p pVar) {
        return pVar.f33787j.b() == k.NOT_ROAMING;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // n1.c
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public boolean c(m1.b bVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            return (bVar.a() && bVar.c()) ? false : true;
        }
        j.c().a(f32372e, "Not-roaming network constraint is not supported before API 24, only checking for connected state.", new Throwable[0]);
        return !bVar.a();
    }
}
