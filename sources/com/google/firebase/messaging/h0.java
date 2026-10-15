package com.google.firebase.messaging;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.firebase.messaging.b;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class h0 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<h0> CREATOR = new i0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    Bundle f26449o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Map<String, String> f26450p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private b f26451q;

    /* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f26452a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f26453b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String[] f26454c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f26455d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f26456e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final String[] f26457f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final String f26458g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final String f26459h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final String f26460i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final String f26461j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final String f26462k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final String f26463l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final String f26464m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final Uri f26465n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final String f26466o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final Integer f26467p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final Integer f26468q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private final Integer f26469r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private final int[] f26470s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private final Long f26471t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private final boolean f26472u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private final boolean f26473v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private final boolean f26474w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private final boolean f26475x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private final boolean f26476y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private final long[] f26477z;

        private b(g0 g0Var) {
            this.f26452a = g0Var.p("gcm.n.title");
            this.f26453b = g0Var.h("gcm.n.title");
            this.f26454c = b(g0Var, "gcm.n.title");
            this.f26455d = g0Var.p("gcm.n.body");
            this.f26456e = g0Var.h("gcm.n.body");
            this.f26457f = b(g0Var, "gcm.n.body");
            this.f26458g = g0Var.p("gcm.n.icon");
            this.f26460i = g0Var.o();
            this.f26461j = g0Var.p("gcm.n.tag");
            this.f26462k = g0Var.p("gcm.n.color");
            this.f26463l = g0Var.p("gcm.n.click_action");
            this.f26464m = g0Var.p("gcm.n.android_channel_id");
            this.f26465n = g0Var.f();
            this.f26459h = g0Var.p("gcm.n.image");
            this.f26466o = g0Var.p("gcm.n.ticker");
            this.f26467p = g0Var.b("gcm.n.notification_priority");
            this.f26468q = g0Var.b("gcm.n.visibility");
            this.f26469r = g0Var.b("gcm.n.notification_count");
            this.f26472u = g0Var.a("gcm.n.sticky");
            this.f26473v = g0Var.a("gcm.n.local_only");
            this.f26474w = g0Var.a("gcm.n.default_sound");
            this.f26475x = g0Var.a("gcm.n.default_vibrate_timings");
            this.f26476y = g0Var.a("gcm.n.default_light_settings");
            this.f26471t = g0Var.j("gcm.n.event_time");
            this.f26470s = g0Var.e();
            this.f26477z = g0Var.q();
        }

        private static String[] b(g0 g0Var, String str) {
            Object[] objArrG = g0Var.g(str);
            if (objArrG == null) {
                return null;
            }
            String[] strArr = new String[objArrG.length];
            for (int i10 = 0; i10 < objArrG.length; i10++) {
                strArr[i10] = String.valueOf(objArrG[i10]);
            }
            return strArr;
        }

        public String a() {
            return this.f26455d;
        }

        public String c() {
            return this.f26461j;
        }

        public String d() {
            return this.f26452a;
        }
    }

    @SafeParcelable.Constructor
    public h0(@SafeParcelable.Param Bundle bundle) {
        this.f26449o = bundle;
    }

    public Map<String, String> V3() {
        if (this.f26450p == null) {
            this.f26450p = b.a.a(this.f26449o);
        }
        return this.f26450p;
    }

    public b W3() {
        if (this.f26451q == null && g0.t(this.f26449o)) {
            this.f26451q = new b(new g0(this.f26449o));
        }
        return this.f26451q;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        i0.c(this, parcel, i10);
    }
}
