package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzauj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f9982a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzaug f9983b = new zzaul();

    public zzauj(int i10) {
        this.f9982a = i10;
    }

    public final String a(ArrayList arrayList) {
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            sb.append(((String) arrayList.get(i10)).toLowerCase(Locale.US));
            sb.append('\n');
        }
        String[] strArrSplit = sb.toString().split("\n");
        if (strArrSplit.length == 0) {
            return BuildConfig.FLAVOR;
        }
        zzaui zzauiVar = new zzaui();
        PriorityQueue priorityQueue = new PriorityQueue(this.f9982a, new zzauh(this));
        for (String str : strArrSplit) {
            String[] strArrB = zzauk.b(str, false);
            if (strArrB.length != 0) {
                zzauo.c(strArrB, this.f9982a, 6, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                zzauiVar.f9981b.write(this.f9983b.b(((zzaun) it.next()).f9986b));
            } catch (IOException e10) {
                zzbza.e("Error while writing hash to byteStream", e10);
            }
        }
        return zzauiVar.toString();
    }
}
