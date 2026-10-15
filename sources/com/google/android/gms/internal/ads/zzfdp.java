package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfdp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Clock f17960a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f17961b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f17962c = new HashMap();

    public zzfdp(Clock clock) {
        this.f17960a = clock;
    }

    private final void d(String str, String str2) {
        if (!this.f17961b.containsKey(str)) {
            this.f17961b.put(str, new ArrayList());
        }
        ((List) this.f17961b.get(str)).add(str2);
    }

    public final List a() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : this.f17961b.entrySet()) {
            int i10 = 0;
            if (((List) entry.getValue()).size() > 1) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    i10++;
                    arrayList.add(new zzfdo(((String) entry.getKey()) + "." + i10, (String) it.next()));
                }
            } else {
                arrayList.add(new zzfdo((String) entry.getKey(), (String) ((List) entry.getValue()).get(0)));
            }
        }
        return arrayList;
    }

    public final void b(String str) {
        if (!this.f17962c.containsKey(str)) {
            this.f17962c.put(str, Long.valueOf(this.f17960a.b()));
            return;
        }
        long jB = this.f17960a.b() - ((Long) this.f17962c.remove(str)).longValue();
        StringBuilder sb = new StringBuilder();
        sb.append(jB);
        d(str, sb.toString());
    }

    public final void c(String str, String str2) {
        if (!this.f17962c.containsKey(str)) {
            this.f17962c.put(str, Long.valueOf(this.f17960a.b()));
            return;
        }
        d(str, str2 + (this.f17960a.b() - ((Long) this.f17962c.remove(str)).longValue()));
    }
}
