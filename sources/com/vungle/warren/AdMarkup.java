package com.vungle.warren;

import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class AdMarkup implements Serializable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f27708o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String[] f27709p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f27710q;

    private AdMarkup(String str, String[] strArr, int i10) {
        this.f27708o = str;
        this.f27709p = strArr;
        this.f27710q = i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.vungle.warren.AdMarkup fromString(java.lang.String r5) {
        /*
            r0 = 0
            if (r5 != 0) goto L4
            return r0
        L4:
            com.google.gson.g r1 = new com.google.gson.g     // Catch: com.google.gson.u -> L69
            r1.<init>()     // Catch: com.google.gson.u -> L69
            com.google.gson.f r1 = r1.b()     // Catch: com.google.gson.u -> L69
            java.lang.Class<com.google.gson.o> r2 = com.google.gson.o.class
            java.lang.Object r5 = r1.k(r5, r2)     // Catch: com.google.gson.u -> L69
            com.google.gson.o r5 = (com.google.gson.o) r5     // Catch: com.google.gson.u -> L69
            if (r5 != 0) goto L18
            return r0
        L18:
            java.lang.String r1 = "impression"
            boolean r2 = com.vungle.warren.model.JsonUtil.hasNonNull(r5, r1)
            if (r2 == 0) goto L4b
            com.google.gson.i r1 = r5.B(r1)
            boolean r2 = r1.p()
            if (r2 == 0) goto L4b
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            com.google.gson.i r1 = r1.k()
            java.util.Iterator r1 = r1.iterator()
        L37:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L4c
            java.lang.Object r3 = r1.next()
            com.google.gson.l r3 = (com.google.gson.l) r3
            java.lang.String r3 = r3.o()
            r2.add(r3)
            goto L37
        L4b:
            r2 = r0
        L4c:
            com.vungle.warren.AdMarkup r1 = new com.vungle.warren.AdMarkup
            java.lang.String r3 = "event_id"
            java.lang.String r3 = com.vungle.warren.model.JsonUtil.getAsString(r5, r3, r0)
            r4 = 0
            if (r2 == 0) goto L5f
            java.lang.String[] r0 = new java.lang.String[r4]
            java.lang.Object[] r0 = r2.toArray(r0)
            java.lang.String[] r0 = (java.lang.String[]) r0
        L5f:
            java.lang.String r2 = "version"
            int r5 = com.vungle.warren.model.JsonUtil.getAsInt(r5, r2, r4)
            r1.<init>(r3, r0, r5)
            return r1
        L69:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.AdMarkup.fromString(java.lang.String):com.vungle.warren.AdMarkup");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AdMarkup.class != obj.getClass()) {
            return false;
        }
        String str = this.f27708o;
        String str2 = ((AdMarkup) obj).f27708o;
        return str != null ? str.equals(str2) : str2 == null;
    }

    public String getEventId() {
        return this.f27708o;
    }

    public String[] getImpression() {
        return this.f27709p;
    }

    public int getVersion() {
        return this.f27710q;
    }

    public int hashCode() {
        String str = this.f27708o;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "AdMarkup{eventId='" + this.f27708o + "', impression=" + Arrays.toString(this.f27709p) + ", version=" + this.f27710q + '}';
    }
}
