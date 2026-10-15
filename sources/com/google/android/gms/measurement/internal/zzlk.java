package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.measurement.zzeq;
import com.google.android.gms.internal.measurement.zzex;
import com.google.android.gms.internal.measurement.zzfo;
import com.google.android.gms.internal.measurement.zzfw;
import com.google.android.gms.internal.measurement.zzgb;
import com.google.android.gms.internal.measurement.zzgc;
import com.google.android.gms.internal.measurement.zzgh;
import com.google.android.gms.internal.measurement.zzgk;
import com.google.android.gms.internal.measurement.zzgl;
import com.google.android.gms.internal.measurement.zzjo;
import com.google.android.gms.internal.measurement.zzkm;
import com.google.android.gms.internal.measurement.zzpa;
import com.google.android.gms.internal.measurement.zzpp;
import com.vungle.mediation.BuildConfig;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzlk extends r3 {
    zzlk(zzli zzliVar) {
        super(zzliVar);
    }

    static List F(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i10 = 0; i10 < length; i10++) {
            long j10 = 0;
            for (int i11 = 0; i11 < 64; i11++) {
                int i12 = (i10 * 64) + i11;
                if (i12 >= bitSet.length()) {
                    break;
                }
                if (bitSet.get(i12)) {
                    j10 |= 1 << i11;
                }
            }
            arrayList.add(Long.valueOf(j10));
        }
        return arrayList;
    }

    static boolean J(List list, int i10) {
        if (i10 < list.size() * 64) {
            return ((1 << (i10 % 64)) & ((Long) list.get(i10 / 64)).longValue()) != 0;
        }
        return false;
    }

    static boolean L(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    static final void N(com.google.android.gms.internal.measurement.zzfr zzfrVar, String str, Object obj) {
        List listG = zzfrVar.G();
        int i10 = 0;
        while (true) {
            if (i10 >= listG.size()) {
                i10 = -1;
                break;
            } else if (str.equals(((zzfw) listG.get(i10)).A())) {
                break;
            } else {
                i10++;
            }
        }
        com.google.android.gms.internal.measurement.zzfv zzfvVarY = zzfw.y();
        zzfvVarY.A(str);
        if (obj instanceof Long) {
            zzfvVarY.z(((Long) obj).longValue());
        }
        if (i10 >= 0) {
            zzfrVar.A(i10, zzfvVarY);
        } else {
            zzfrVar.v(zzfvVarY);
        }
    }

    static final boolean h(zzav zzavVar, zzp zzpVar) {
        Preconditions.k(zzavVar);
        Preconditions.k(zzpVar);
        return (TextUtils.isEmpty(zzpVar.f24880p) && TextUtils.isEmpty(zzpVar.E)) ? false : true;
    }

    static final zzfw i(com.google.android.gms.internal.measurement.zzfs zzfsVar, String str) {
        for (zzfw zzfwVar : zzfsVar.C()) {
            if (zzfwVar.A().equals(str)) {
                return zzfwVar;
            }
        }
        return null;
    }

    static final Object j(com.google.android.gms.internal.measurement.zzfs zzfsVar, String str) {
        zzfw zzfwVarI = i(zzfsVar, str);
        if (zzfwVarI == null) {
            return null;
        }
        if (zzfwVarI.S()) {
            return zzfwVarI.B();
        }
        if (zzfwVarI.Q()) {
            return Long.valueOf(zzfwVarI.x());
        }
        if (zzfwVarI.O()) {
            return Double.valueOf(zzfwVarI.u());
        }
        if (zzfwVarI.w() <= 0) {
            return null;
        }
        List<zzfw> listC = zzfwVarI.C();
        ArrayList arrayList = new ArrayList();
        for (zzfw zzfwVar : listC) {
            if (zzfwVar != null) {
                Bundle bundle = new Bundle();
                for (zzfw zzfwVar2 : zzfwVar.C()) {
                    if (zzfwVar2.S()) {
                        bundle.putString(zzfwVar2.A(), zzfwVar2.B());
                    } else if (zzfwVar2.Q()) {
                        bundle.putLong(zzfwVar2.A(), zzfwVar2.x());
                    } else if (zzfwVar2.O()) {
                        bundle.putDouble(zzfwVar2.A(), zzfwVar2.u());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    private final void k(StringBuilder sb, int i10, List list) {
        if (list == null) {
            return;
        }
        int i11 = i10 + 1;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzfw zzfwVar = (zzfw) it.next();
            if (zzfwVar != null) {
                m(sb, i11);
                sb.append("param {\n");
                p(sb, i11, "name", zzfwVar.R() ? this.f24394a.A().e(zzfwVar.A()) : null);
                p(sb, i11, "string_value", zzfwVar.S() ? zzfwVar.B() : null);
                p(sb, i11, "int_value", zzfwVar.Q() ? Long.valueOf(zzfwVar.x()) : null);
                p(sb, i11, "double_value", zzfwVar.O() ? Double.valueOf(zzfwVar.u()) : null);
                if (zzfwVar.w() > 0) {
                    k(sb, i11, zzfwVar.C());
                }
                m(sb, i11);
                sb.append("}\n");
            }
        }
    }

    private final void l(StringBuilder sb, int i10, com.google.android.gms.internal.measurement.zzel zzelVar) {
        String str;
        if (zzelVar == null) {
            return;
        }
        m(sb, i10);
        sb.append("filter {\n");
        if (zzelVar.B()) {
            p(sb, i10, "complement", Boolean.valueOf(zzelVar.A()));
        }
        if (zzelVar.D()) {
            p(sb, i10, "param_name", this.f24394a.A().e(zzelVar.y()));
        }
        if (zzelVar.E()) {
            int i11 = i10 + 1;
            zzex zzexVarX = zzelVar.x();
            if (zzexVarX != null) {
                m(sb, i11);
                sb.append("string_filter {\n");
                if (zzexVarX.C()) {
                    switch (zzexVarX.D()) {
                        case 1:
                            str = "UNKNOWN_MATCH_TYPE";
                            break;
                        case 2:
                            str = "REGEXP";
                            break;
                        case 3:
                            str = "BEGINS_WITH";
                            break;
                        case 4:
                            str = "ENDS_WITH";
                            break;
                        case 5:
                            str = "PARTIAL";
                            break;
                        case 6:
                            str = "EXACT";
                            break;
                        default:
                            str = "IN_LIST";
                            break;
                    }
                    p(sb, i11, "match_type", str);
                }
                if (zzexVarX.B()) {
                    p(sb, i11, "expression", zzexVarX.x());
                }
                if (zzexVarX.A()) {
                    p(sb, i11, "case_sensitive", Boolean.valueOf(zzexVarX.z()));
                }
                if (zzexVarX.u() > 0) {
                    m(sb, i11 + 1);
                    sb.append("expression_list {\n");
                    for (String str2 : zzexVarX.y()) {
                        m(sb, i11 + 2);
                        sb.append(str2);
                        sb.append("\n");
                    }
                    sb.append("}\n");
                }
                m(sb, i11);
                sb.append("}\n");
            }
        }
        if (zzelVar.C()) {
            q(sb, i10 + 1, "number_filter", zzelVar.w());
        }
        m(sb, i10);
        sb.append("}\n");
    }

    private static final void m(StringBuilder sb, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            sb.append("  ");
        }
    }

    private static final String n(boolean z10, boolean z11, boolean z12) {
        StringBuilder sb = new StringBuilder();
        if (z10) {
            sb.append("Dynamic ");
        }
        if (z11) {
            sb.append("Sequence ");
        }
        if (z12) {
            sb.append("Session-Scoped ");
        }
        return sb.toString();
    }

    private static final void o(StringBuilder sb, int i10, String str, zzgh zzghVar) {
        if (zzghVar == null) {
            return;
        }
        m(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        if (zzghVar.v() != 0) {
            m(sb, 4);
            sb.append("results: ");
            int i11 = 0;
            for (Long l10 : zzghVar.E()) {
                int i12 = i11 + 1;
                if (i11 != 0) {
                    sb.append(", ");
                }
                sb.append(l10);
                i11 = i12;
            }
            sb.append('\n');
        }
        if (zzghVar.x() != 0) {
            m(sb, 4);
            sb.append("status: ");
            int i13 = 0;
            for (Long l11 : zzghVar.G()) {
                int i14 = i13 + 1;
                if (i13 != 0) {
                    sb.append(", ");
                }
                sb.append(l11);
                i13 = i14;
            }
            sb.append('\n');
        }
        if (zzghVar.u() != 0) {
            m(sb, 4);
            sb.append("dynamic_filter_timestamps: {");
            int i15 = 0;
            for (com.google.android.gms.internal.measurement.zzfq zzfqVar : zzghVar.D()) {
                int i16 = i15 + 1;
                if (i15 != 0) {
                    sb.append(", ");
                }
                sb.append(zzfqVar.B() ? Integer.valueOf(zzfqVar.u()) : null);
                sb.append(CertificateUtil.DELIMITER);
                sb.append(zzfqVar.A() ? Long.valueOf(zzfqVar.v()) : null);
                i15 = i16;
            }
            sb.append("}\n");
        }
        if (zzghVar.w() != 0) {
            m(sb, 4);
            sb.append("sequence_filter_timestamps: {");
            int i17 = 0;
            for (com.google.android.gms.internal.measurement.zzgj zzgjVar : zzghVar.F()) {
                int i18 = i17 + 1;
                if (i17 != 0) {
                    sb.append(", ");
                }
                sb.append(zzgjVar.C() ? Integer.valueOf(zzgjVar.v()) : null);
                sb.append(": [");
                Iterator it = zzgjVar.z().iterator();
                int i19 = 0;
                while (it.hasNext()) {
                    long jLongValue = ((Long) it.next()).longValue();
                    int i20 = i19 + 1;
                    if (i19 != 0) {
                        sb.append(", ");
                    }
                    sb.append(jLongValue);
                    i19 = i20;
                }
                sb.append("]");
                i17 = i18;
            }
            sb.append("}\n");
        }
        m(sb, 3);
        sb.append("}\n");
    }

    private static final void p(StringBuilder sb, int i10, String str, Object obj) {
        if (obj == null) {
            return;
        }
        m(sb, i10 + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    private static final void q(StringBuilder sb, int i10, String str, zzeq zzeqVar) {
        if (zzeqVar == null) {
            return;
        }
        m(sb, i10);
        sb.append(str);
        sb.append(" {\n");
        if (zzeqVar.A()) {
            int iF = zzeqVar.F();
            p(sb, i10, "comparison_type", iF != 1 ? iF != 2 ? iF != 3 ? iF != 4 ? "BETWEEN" : "EQUAL" : "GREATER_THAN" : "LESS_THAN" : "UNKNOWN_COMPARISON_TYPE");
        }
        if (zzeqVar.C()) {
            p(sb, i10, "match_as_float", Boolean.valueOf(zzeqVar.z()));
        }
        if (zzeqVar.B()) {
            p(sb, i10, "comparison_value", zzeqVar.w());
        }
        if (zzeqVar.E()) {
            p(sb, i10, "min_comparison_value", zzeqVar.y());
        }
        if (zzeqVar.D()) {
            p(sb, i10, "max_comparison_value", zzeqVar.x());
        }
        m(sb, i10);
        sb.append("}\n");
    }

    static int r(zzgb zzgbVar, String str) {
        if (zzgbVar != null) {
            for (int i10 = 0; i10 < zzgbVar.r0(); i10++) {
                if (str.equals(zzgbVar.m0(i10).z())) {
                    return i10;
                }
            }
        }
        return -1;
    }

    static com.google.android.gms.internal.measurement.zzli z(com.google.android.gms.internal.measurement.zzli zzliVar, byte[] bArr) throws zzkm {
        zzjo zzjoVarB = zzjo.b();
        return zzjoVarB != null ? zzliVar.p2(bArr, zzjoVarB) : zzliVar.m1(bArr);
    }

    final String A(com.google.android.gms.internal.measurement.zzga zzgaVar) {
        if (zzgaVar == null) {
            return BuildConfig.FLAVOR;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        for (zzgc zzgcVar : zzgaVar.x()) {
            if (zzgcVar != null) {
                m(sb, 1);
                sb.append("bundle {\n");
                if (zzgcVar.o1()) {
                    p(sb, 1, "protocol_version", Integer.valueOf(zzgcVar.x1()));
                }
                zzpp.b();
                if (this.f24394a.v().y(null, zzel.J0) && zzgcVar.r1()) {
                    p(sb, 1, "session_stitching_token", zzgcVar.F());
                }
                p(sb, 1, "platform", zzgcVar.D());
                if (zzgcVar.j1()) {
                    p(sb, 1, "gmp_version", Long.valueOf(zzgcVar.G1()));
                }
                if (zzgcVar.v1()) {
                    p(sb, 1, "uploading_gmp_version", Long.valueOf(zzgcVar.L1()));
                }
                if (zzgcVar.h1()) {
                    p(sb, 1, "dynamite_version", Long.valueOf(zzgcVar.E1()));
                }
                if (zzgcVar.e1()) {
                    p(sb, 1, "config_version", Long.valueOf(zzgcVar.C1()));
                }
                p(sb, 1, "gmp_app_id", zzgcVar.A());
                p(sb, 1, "admob_app_id", zzgcVar.Q1());
                p(sb, 1, "app_id", zzgcVar.R1());
                p(sb, 1, "app_version", zzgcVar.v());
                if (zzgcVar.c1()) {
                    p(sb, 1, "app_version_major", Integer.valueOf(zzgcVar.W()));
                }
                p(sb, 1, "firebase_instance_id", zzgcVar.z());
                if (zzgcVar.g1()) {
                    p(sb, 1, "dev_cert_hash", Long.valueOf(zzgcVar.D1()));
                }
                p(sb, 1, "app_store", zzgcVar.u());
                if (zzgcVar.u1()) {
                    p(sb, 1, "upload_timestamp_millis", Long.valueOf(zzgcVar.K1()));
                }
                if (zzgcVar.s1()) {
                    p(sb, 1, "start_timestamp_millis", Long.valueOf(zzgcVar.J1()));
                }
                if (zzgcVar.i1()) {
                    p(sb, 1, "end_timestamp_millis", Long.valueOf(zzgcVar.F1()));
                }
                if (zzgcVar.n1()) {
                    p(sb, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(zzgcVar.I1()));
                }
                if (zzgcVar.l1()) {
                    p(sb, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(zzgcVar.H1()));
                }
                p(sb, 1, "app_instance_id", zzgcVar.S1());
                p(sb, 1, "resettable_device_id", zzgcVar.E());
                p(sb, 1, "ds_id", zzgcVar.y());
                if (zzgcVar.k1()) {
                    p(sb, 1, "limited_ad_tracking", Boolean.valueOf(zzgcVar.v0()));
                }
                p(sb, 1, "os_version", zzgcVar.C());
                p(sb, 1, "device_model", zzgcVar.x());
                p(sb, 1, "user_default_language", zzgcVar.G());
                if (zzgcVar.t1()) {
                    p(sb, 1, "time_zone_offset_minutes", Integer.valueOf(zzgcVar.z1()));
                }
                if (zzgcVar.d1()) {
                    p(sb, 1, "bundle_sequential_index", Integer.valueOf(zzgcVar.Y0()));
                }
                if (zzgcVar.q1()) {
                    p(sb, 1, "service_upload", Boolean.valueOf(zzgcVar.w0()));
                }
                p(sb, 1, "health_monitor", zzgcVar.B());
                if (!this.f24394a.v().y(null, zzel.f24576j0) && zzgcVar.b1() && zzgcVar.B1() != 0) {
                    p(sb, 1, "android_id", Long.valueOf(zzgcVar.B1()));
                }
                if (zzgcVar.p1()) {
                    p(sb, 1, "retry_counter", Integer.valueOf(zzgcVar.y1()));
                }
                if (zzgcVar.f1()) {
                    p(sb, 1, "consent_signals", zzgcVar.w());
                }
                List<zzgl> listJ = zzgcVar.J();
                if (listJ != null) {
                    for (zzgl zzglVar : listJ) {
                        if (zzglVar != null) {
                            m(sb, 2);
                            sb.append("user_property {\n");
                            p(sb, 2, "set_timestamp_millis", zzglVar.L() ? Long.valueOf(zzglVar.w()) : null);
                            p(sb, 2, "name", this.f24394a.A().f(zzglVar.z()));
                            p(sb, 2, "string_value", zzglVar.A());
                            p(sb, 2, "int_value", zzglVar.K() ? Long.valueOf(zzglVar.v()) : null);
                            p(sb, 2, "double_value", zzglVar.J() ? Double.valueOf(zzglVar.u()) : null);
                            m(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<zzfo> listH = zzgcVar.H();
                if (listH != null) {
                    for (zzfo zzfoVar : listH) {
                        if (zzfoVar != null) {
                            m(sb, 2);
                            sb.append("audience_membership {\n");
                            if (zzfoVar.E()) {
                                p(sb, 2, "audience_id", Integer.valueOf(zzfoVar.u()));
                            }
                            if (zzfoVar.F()) {
                                p(sb, 2, "new_audience", Boolean.valueOf(zzfoVar.D()));
                            }
                            o(sb, 2, "current_data", zzfoVar.x());
                            if (zzfoVar.G()) {
                                o(sb, 2, "previous_data", zzfoVar.y());
                            }
                            m(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<com.google.android.gms.internal.measurement.zzfs> listI = zzgcVar.I();
                if (listI != null) {
                    for (com.google.android.gms.internal.measurement.zzfs zzfsVar : listI) {
                        if (zzfsVar != null) {
                            m(sb, 2);
                            sb.append("event {\n");
                            p(sb, 2, "name", this.f24394a.A().d(zzfsVar.B()));
                            if (zzfsVar.O()) {
                                p(sb, 2, "timestamp_millis", Long.valueOf(zzfsVar.x()));
                            }
                            if (zzfsVar.N()) {
                                p(sb, 2, "previous_timestamp_millis", Long.valueOf(zzfsVar.w()));
                            }
                            if (zzfsVar.L()) {
                                p(sb, 2, "count", Integer.valueOf(zzfsVar.u()));
                            }
                            if (zzfsVar.v() != 0) {
                                k(sb, 2, zzfsVar.C());
                            }
                            m(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                m(sb, 1);
                sb.append("}\n");
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    final String C(com.google.android.gms.internal.measurement.zzej zzejVar) {
        if (zzejVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        if (zzejVar.I()) {
            p(sb, 0, "filter_id", Integer.valueOf(zzejVar.v()));
        }
        p(sb, 0, "event_name", this.f24394a.A().d(zzejVar.A()));
        String strN = n(zzejVar.E(), zzejVar.F(), zzejVar.G());
        if (!strN.isEmpty()) {
            p(sb, 0, "filter_type", strN);
        }
        if (zzejVar.H()) {
            q(sb, 1, "event_count_filter", zzejVar.z());
        }
        if (zzejVar.u() > 0) {
            sb.append("  filters {\n");
            Iterator it = zzejVar.B().iterator();
            while (it.hasNext()) {
                l(sb, 2, (com.google.android.gms.internal.measurement.zzel) it.next());
            }
        }
        m(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    final String D(com.google.android.gms.internal.measurement.zzes zzesVar) {
        if (zzesVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        if (zzesVar.D()) {
            p(sb, 0, "filter_id", Integer.valueOf(zzesVar.u()));
        }
        p(sb, 0, "property_name", this.f24394a.A().f(zzesVar.y()));
        String strN = n(zzesVar.A(), zzesVar.B(), zzesVar.C());
        if (!strN.isEmpty()) {
            p(sb, 0, "filter_type", strN);
        }
        l(sb, 1, zzesVar.v());
        sb.append("}\n");
        return sb.toString();
    }

    final List E(List list, List list2) {
        int i10;
        ArrayList arrayList = new ArrayList(list);
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (num.intValue() < 0) {
                this.f24394a.U().r().b("Ignoring negative bit index to be cleared", num);
            } else {
                int iIntValue = num.intValue() / 64;
                if (iIntValue >= arrayList.size()) {
                    this.f24394a.U().r().c("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(iIntValue, Long.valueOf(((Long) arrayList.get(iIntValue)).longValue() & ((1 << (num.intValue() % 64)) ^ (-1))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i11 = size2;
            i10 = size;
            size = i11;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x004b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0051 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x000d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x000d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.util.Map G(android.os.Bundle r11, boolean r12) {
        /*
            r10 = this;
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.util.Set r1 = r11.keySet()
            java.util.Iterator r1 = r1.iterator()
        Ld:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto La6
            java.lang.Object r2 = r1.next()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r3 = r11.get(r2)
            com.google.android.gms.internal.measurement.zzpa.b()
            com.google.android.gms.measurement.internal.zzgi r4 = r10.f24394a
            com.google.android.gms.measurement.internal.zzaf r4 = r4.v()
            r5 = 0
            com.google.android.gms.measurement.internal.zzek r6 = com.google.android.gms.measurement.internal.zzel.f24586o0
            boolean r4 = r4.y(r5, r6)
            if (r4 == 0) goto L3c
            boolean r4 = r3 instanceof android.os.Parcelable[]
            if (r4 != 0) goto L4f
            boolean r4 = r3 instanceof java.util.ArrayList
            if (r4 != 0) goto L4f
            boolean r4 = r3 instanceof android.os.Bundle
            if (r4 == 0) goto L49
            goto L4f
        L3c:
            boolean r4 = r3 instanceof android.os.Bundle[]
            if (r4 != 0) goto L4f
            boolean r4 = r3 instanceof java.util.ArrayList
            if (r4 != 0) goto L4f
            boolean r4 = r3 instanceof android.os.Bundle
            if (r4 == 0) goto L49
            goto L4f
        L49:
            if (r3 == 0) goto Ld
            r0.put(r2, r3)
            goto Ld
        L4f:
            if (r12 == 0) goto Ld
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            boolean r5 = r3 instanceof android.os.Parcelable[]
            r6 = 0
            if (r5 == 0) goto L73
            android.os.Parcelable[] r3 = (android.os.Parcelable[]) r3
            int r5 = r3.length
            r7 = 0
        L5f:
            if (r7 >= r5) goto La1
            r8 = r3[r7]
            boolean r9 = r8 instanceof android.os.Bundle
            if (r9 == 0) goto L70
            android.os.Bundle r8 = (android.os.Bundle) r8
            java.util.Map r8 = r10.G(r8, r6)
            r4.add(r8)
        L70:
            int r7 = r7 + 1
            goto L5f
        L73:
            boolean r5 = r3 instanceof java.util.ArrayList
            if (r5 == 0) goto L94
            java.util.ArrayList r3 = (java.util.ArrayList) r3
            int r5 = r3.size()
            r7 = 0
        L7e:
            if (r7 >= r5) goto La1
            java.lang.Object r8 = r3.get(r7)
            boolean r9 = r8 instanceof android.os.Bundle
            if (r9 == 0) goto L91
            android.os.Bundle r8 = (android.os.Bundle) r8
            java.util.Map r8 = r10.G(r8, r6)
            r4.add(r8)
        L91:
            int r7 = r7 + 1
            goto L7e
        L94:
            boolean r5 = r3 instanceof android.os.Bundle
            if (r5 == 0) goto La1
            android.os.Bundle r3 = (android.os.Bundle) r3
            java.util.Map r3 = r10.G(r3, r6)
            r4.add(r3)
        La1:
            r0.put(r2, r4)
            goto Ld
        La6:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzlk.G(android.os.Bundle, boolean):java.util.Map");
    }

    final void H(com.google.android.gms.internal.measurement.zzfv zzfvVar, Object obj) {
        Preconditions.k(obj);
        zzfvVar.x();
        zzfvVar.v();
        zzfvVar.u();
        zzfvVar.w();
        if (obj instanceof String) {
            zzfvVar.B((String) obj);
            return;
        }
        if (obj instanceof Long) {
            zzfvVar.z(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Double) {
            zzfvVar.y(((Double) obj).doubleValue());
            return;
        }
        if (!(obj instanceof Bundle[])) {
            this.f24394a.U().m().b("Ignoring invalid (type) event param value", obj);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : (Bundle[]) obj) {
            if (bundle != null) {
                com.google.android.gms.internal.measurement.zzfv zzfvVarY = zzfw.y();
                for (String str : bundle.keySet()) {
                    com.google.android.gms.internal.measurement.zzfv zzfvVarY2 = zzfw.y();
                    zzfvVarY2.A(str);
                    Object obj2 = bundle.get(str);
                    if (obj2 instanceof Long) {
                        zzfvVarY2.z(((Long) obj2).longValue());
                    } else if (obj2 instanceof String) {
                        zzfvVarY2.B((String) obj2);
                    } else if (obj2 instanceof Double) {
                        zzfvVarY2.y(((Double) obj2).doubleValue());
                    }
                    zzfvVarY.t(zzfvVarY2);
                }
                if (zzfvVarY.r() > 0) {
                    arrayList.add((zzfw) zzfvVarY.o());
                }
            }
        }
        zzfvVar.s(arrayList);
    }

    final void I(zzgk zzgkVar, Object obj) {
        Preconditions.k(obj);
        zzgkVar.t();
        zzgkVar.s();
        zzgkVar.r();
        if (obj instanceof String) {
            zzgkVar.y((String) obj);
            return;
        }
        if (obj instanceof Long) {
            zzgkVar.v(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzgkVar.u(((Double) obj).doubleValue());
        } else {
            this.f24394a.U().m().b("Ignoring invalid (type) user attribute value", obj);
        }
    }

    final boolean K(long j10, long j11) {
        return j10 == 0 || j11 <= 0 || Math.abs(this.f24394a.x().a() - j10) > j11;
    }

    final byte[] M(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e10) {
            this.f24394a.U().m().b("Failed to gzip content", e10);
            throw e10;
        }
    }

    @Override // com.google.android.gms.measurement.internal.r3
    protected final boolean g() {
        return false;
    }

    final long s(byte[] bArr) {
        Preconditions.k(bArr);
        this.f24394a.L().c();
        MessageDigest messageDigestO = zzlp.o();
        if (messageDigestO != null) {
            return zzlp.q0(messageDigestO.digest(bArr));
        }
        this.f24394a.U().m().a("Failed to get MD5");
        return 0L;
    }

    final Bundle u(Map map, boolean z10) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (!(obj instanceof ArrayList)) {
                bundle.putString(str, obj.toString());
            } else if (z10) {
                zzpa.b();
                if (this.f24394a.v().y(null, zzel.f24586o0)) {
                    ArrayList arrayList = (ArrayList) obj;
                    ArrayList arrayList2 = new ArrayList();
                    int size = arrayList.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        arrayList2.add(u((Map) arrayList.get(i10), false));
                    }
                    bundle.putParcelableArray(str, (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
                } else {
                    ArrayList arrayList3 = (ArrayList) obj;
                    ArrayList<? extends Parcelable> arrayList4 = new ArrayList<>();
                    int size2 = arrayList3.size();
                    for (int i11 = 0; i11 < size2; i11++) {
                        arrayList4.add(u((Map) arrayList3.get(i11), false));
                    }
                    bundle.putParcelableArrayList(str, arrayList4);
                }
            }
        }
        return bundle;
    }

    final Parcelable v(byte[] bArr, Parcelable.Creator creator) {
        if (bArr == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.unmarshall(bArr, 0, bArr.length);
            parcelObtain.setDataPosition(0);
            return (Parcelable) creator.createFromParcel(parcelObtain);
        } catch (SafeParcelReader.ParseException unused) {
            this.f24394a.U().m().a("Failed to load parcelable from buffer");
            return null;
        } finally {
            parcelObtain.recycle();
        }
    }

    final zzav w(com.google.android.gms.internal.measurement.zzaa zzaaVar) {
        Object obj;
        Bundle bundleU = u(zzaaVar.e(), true);
        String string = (!bundleU.containsKey("_o") || (obj = bundleU.get("_o")) == null) ? "app" : obj.toString();
        String strB = zzhf.b(zzaaVar.d());
        if (strB == null) {
            strB = zzaaVar.d();
        }
        return new zzav(strB, new zzat(bundleU), string, zzaaVar.a());
    }

    final com.google.android.gms.internal.measurement.zzfs y(zzaq zzaqVar) {
        com.google.android.gms.internal.measurement.zzfr zzfrVarY = com.google.android.gms.internal.measurement.zzfs.y();
        zzfrVarY.C(zzaqVar.f24451e);
        i iVar = new i(zzaqVar.f24452f);
        while (iVar.hasNext()) {
            String next = iVar.next();
            com.google.android.gms.internal.measurement.zzfv zzfvVarY = zzfw.y();
            zzfvVarY.A(next);
            Object objA4 = zzaqVar.f24452f.a4(next);
            Preconditions.k(objA4);
            H(zzfvVarY, objA4);
            zzfrVarY.v(zzfvVarY);
        }
        return (com.google.android.gms.internal.measurement.zzfs) zzfrVarY.o();
    }
}
