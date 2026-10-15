package com.google.android.gms.drive.metadata.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.internal.drive.zzhs;
import com.google.android.gms.internal.drive.zzid;
import com.google.android.gms.internal.drive.zzif;
import com.google.android.gms.internal.drive.zzin;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<String, MetadataField<?>> f7803a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map<String, zzg> f7804b = new HashMap();

    static {
        c(zzhs.f22029a);
        c(zzhs.G);
        c(zzhs.f22052x);
        c(zzhs.E);
        c(zzhs.H);
        c(zzhs.f22042n);
        c(zzhs.f22041m);
        c(zzhs.f22043o);
        c(zzhs.f22044p);
        c(zzhs.f22045q);
        c(zzhs.f22039k);
        c(zzhs.f22047s);
        c(zzhs.f22048t);
        c(zzhs.f22049u);
        c(zzhs.C);
        c(zzhs.f22030b);
        c(zzhs.f22054z);
        c(zzhs.f22032d);
        c(zzhs.f22040l);
        c(zzhs.f22033e);
        c(zzhs.f22034f);
        c(zzhs.f22035g);
        c(zzhs.f22036h);
        c(zzhs.f22051w);
        c(zzhs.f22046r);
        c(zzhs.f22053y);
        c(zzhs.A);
        c(zzhs.B);
        c(zzhs.D);
        c(zzhs.I);
        c(zzhs.J);
        c(zzhs.f22038j);
        c(zzhs.f22037i);
        c(zzhs.F);
        c(zzhs.f22050v);
        c(zzhs.f22031c);
        c(zzhs.K);
        c(zzhs.L);
        c(zzhs.M);
        c(zzhs.N);
        c(zzhs.O);
        c(zzhs.P);
        c(zzhs.Q);
        c(zzif.f22056a);
        c(zzif.f22058c);
        c(zzif.f22059d);
        c(zzif.f22060e);
        c(zzif.f22057b);
        c(zzif.f22061f);
        c(zzin.f22063a);
        c(zzin.f22064b);
        b(zzo.f7806e);
        b(zzid.f22055e);
    }

    public static void a(DataHolder dataHolder) {
        Iterator<zzg> it = f7804b.values().iterator();
        while (it.hasNext()) {
            it.next().p1(dataHolder);
        }
    }

    private static void b(zzg zzgVar) {
        if (f7804b.put(zzgVar.m1(), zzgVar) == null) {
            return;
        }
        String strM1 = zzgVar.m1();
        StringBuilder sb = new StringBuilder(String.valueOf(strM1).length() + 46);
        sb.append("A cleaner for key ");
        sb.append(strM1);
        sb.append(" has already been registered");
        throw new IllegalStateException(sb.toString());
    }

    private static void c(MetadataField<?> metadataField) {
        Map<String, MetadataField<?>> map = f7803a;
        if (map.containsKey(metadataField.getName())) {
            String strValueOf = String.valueOf(metadataField.getName());
            throw new IllegalArgumentException(strValueOf.length() != 0 ? "Duplicate field name registered: ".concat(strValueOf) : new String("Duplicate field name registered: "));
        }
        map.put(metadataField.getName(), metadataField);
    }

    public static MetadataField<?> d(String str) {
        return f7803a.get(str);
    }
}
