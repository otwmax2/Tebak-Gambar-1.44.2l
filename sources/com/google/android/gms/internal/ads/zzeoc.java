package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeoc implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private zzfks f17039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzfks f17040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f17041c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f17042d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f17043e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f17044f;

    public zzeoc(zzfks zzfksVar, zzfks zzfksVar2, boolean z10, boolean z11, boolean z12) {
        this.f17039a = zzfksVar;
        this.f17040b = zzfksVar2;
        this.f17041c = z10;
        this.f17042d = z11;
        this.f17044f = z12;
    }

    public zzeoc(boolean z10) {
        this.f17044f = z10;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    @Override // com.google.android.gms.internal.ads.zzepm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final /* bridge */ /* synthetic */ void a(java.lang.Object r6) {
        /*
            r5 = this;
            android.os.Bundle r6 = (android.os.Bundle) r6
            boolean r0 = r5.f17043e
            if (r0 == 0) goto L8
            goto Lb9
        L8:
            java.lang.String r0 = "pii"
            android.os.Bundle r1 = com.google.android.gms.internal.ads.zzezi.a(r6, r0)
            boolean r2 = r5.f17044f
            if (r2 != 0) goto L24
            com.google.android.gms.internal.ads.zzbaj r2 = com.google.android.gms.internal.ads.zzbar.f10425y2
            com.google.android.gms.internal.ads.zzbap r3 = com.google.android.gms.ads.internal.client.zzba.c()
            java.lang.Object r2 = r3.b(r2)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 != 0) goto L3a
        L24:
            boolean r2 = r5.f17044f
            if (r2 == 0) goto L58
            com.google.android.gms.internal.ads.zzbaj r2 = com.google.android.gms.internal.ads.zzbar.A2
            com.google.android.gms.internal.ads.zzbap r3 = com.google.android.gms.ads.internal.client.zzba.c()
            java.lang.Object r2 = r3.b(r2)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L58
        L3a:
            com.google.android.gms.internal.ads.zzfks r2 = r5.f17039a
            boolean r2 = r2.c()
            if (r2 == 0) goto L58
            com.google.android.gms.internal.ads.zzfks r2 = r5.f17039a
            java.lang.String r2 = r2.b()
            java.lang.String r3 = "paidv1_id_android"
            r1.putString(r3, r2)
            com.google.android.gms.internal.ads.zzfks r2 = r5.f17039a
            long r2 = r2.a()
            java.lang.String r4 = "paidv1_creation_time_android"
            r1.putLong(r4, r2)
        L58:
            boolean r2 = r5.f17044f
            if (r2 != 0) goto L6e
            com.google.android.gms.internal.ads.zzbaj r2 = com.google.android.gms.internal.ads.zzbar.f10436z2
            com.google.android.gms.internal.ads.zzbap r3 = com.google.android.gms.ads.internal.client.zzba.c()
            java.lang.Object r2 = r3.b(r2)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 != 0) goto L84
        L6e:
            boolean r2 = r5.f17044f
            if (r2 == 0) goto Lb0
            com.google.android.gms.internal.ads.zzbaj r2 = com.google.android.gms.internal.ads.zzbar.B2
            com.google.android.gms.internal.ads.zzbap r3 = com.google.android.gms.ads.internal.client.zzba.c()
            java.lang.Object r2 = r3.b(r2)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto Lb0
        L84:
            com.google.android.gms.internal.ads.zzfks r2 = r5.f17040b
            boolean r2 = r2.c()
            if (r2 == 0) goto La2
            com.google.android.gms.internal.ads.zzfks r2 = r5.f17040b
            java.lang.String r2 = r2.b()
            java.lang.String r3 = "paidv2_id_android"
            r1.putString(r3, r2)
            com.google.android.gms.internal.ads.zzfks r2 = r5.f17040b
            long r2 = r2.a()
            java.lang.String r4 = "paidv2_creation_time_android"
            r1.putLong(r4, r2)
        La2:
            boolean r2 = r5.f17041c
            java.lang.String r3 = "paidv2_pub_option_android"
            r1.putBoolean(r3, r2)
            boolean r2 = r5.f17042d
            java.lang.String r3 = "paidv2_user_option_android"
            r1.putBoolean(r3, r2)
        Lb0:
            boolean r2 = r1.isEmpty()
            if (r2 != 0) goto Lb9
            r6.putBundle(r0, r1)
        Lb9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeoc.a(java.lang.Object):void");
    }
}
