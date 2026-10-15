package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.e;
import i1.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import q1.p;

/* JADX INFO: compiled from: ConstraintsCommandHandler.java */
/* JADX INFO: loaded from: classes.dex */
class c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f4422e = j.f("ConstraintsCmdHandler");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f4423a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4424b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f4425c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m1.d f4426d;

    c(Context context, int i10, e eVar) {
        this.f4423a = context;
        this.f4424b = i10;
        this.f4425c = eVar;
        this.f4426d = new m1.d(context, eVar.f(), null);
    }

    void a() {
        List<p> listH = this.f4425c.g().p().L().h();
        ConstraintProxy.a(this.f4423a, listH);
        this.f4426d.d(listH);
        ArrayList arrayList = new ArrayList(listH.size());
        long jCurrentTimeMillis = System.currentTimeMillis();
        for (p pVar : listH) {
            String str = pVar.f33778a;
            if (jCurrentTimeMillis >= pVar.a() && (!pVar.b() || this.f4426d.c(str))) {
                arrayList.add(pVar);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str2 = ((p) it.next()).f33778a;
            Intent intentB = b.b(this.f4423a, str2);
            j.c().a(f4422e, String.format("Creating a delay_met command for workSpec with id (%s)", str2), new Throwable[0]);
            e eVar = this.f4425c;
            eVar.k(new e.b(eVar, intentB, this.f4424b));
        }
        this.f4426d.e();
    }
}
