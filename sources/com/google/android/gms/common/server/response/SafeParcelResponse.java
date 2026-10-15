package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.MapUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
@KeepForSdk
@SafeParcelable.Class
public class SafeParcelResponse extends FastSafeParcelableJsonResponse {

    @KeepForSdk
    public static final Parcelable.Creator<SafeParcelResponse> CREATOR = new zaq();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    private final int f7600o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final Parcel f7601p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f7602q = 2;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final zan f7603r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final String f7604s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f7605t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f7606u;

    @SafeParcelable.Constructor
    SafeParcelResponse(@SafeParcelable.Param int i10, @SafeParcelable.Param Parcel parcel, @SafeParcelable.Param zan zanVar) {
        this.f7600o = i10;
        this.f7601p = (Parcel) Preconditions.k(parcel);
        this.f7603r = zanVar;
        this.f7604s = zanVar == null ? null : zanVar.V3();
        this.f7605t = 2;
    }

    private final void B(StringBuilder sb, Map<String, FastJsonResponse.Field<?, ?>> map, Parcel parcel) {
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry<String, FastJsonResponse.Field<?, ?>> entry : map.entrySet()) {
            sparseArray.put(entry.getValue().b4(), entry);
        }
        sb.append('{');
        int iK = SafeParcelReader.K(parcel);
        boolean z10 = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            Map.Entry entry2 = (Map.Entry) sparseArray.get(SafeParcelReader.v(iC));
            if (entry2 != null) {
                if (z10) {
                    sb.append(",");
                }
                String str = (String) entry2.getKey();
                FastJsonResponse.Field field = (FastJsonResponse.Field) entry2.getValue();
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                if (field.i4()) {
                    int i10 = field.f7572r;
                    switch (i10) {
                        case 0:
                            D(sb, field, FastJsonResponse.y(field, Integer.valueOf(SafeParcelReader.E(parcel, iC))));
                            break;
                        case 1:
                            D(sb, field, FastJsonResponse.y(field, SafeParcelReader.c(parcel, iC)));
                            break;
                        case 2:
                            D(sb, field, FastJsonResponse.y(field, Long.valueOf(SafeParcelReader.G(parcel, iC))));
                            break;
                        case 3:
                            D(sb, field, FastJsonResponse.y(field, Float.valueOf(SafeParcelReader.A(parcel, iC))));
                            break;
                        case 4:
                            D(sb, field, FastJsonResponse.y(field, Double.valueOf(SafeParcelReader.y(parcel, iC))));
                            break;
                        case 5:
                            D(sb, field, FastJsonResponse.y(field, SafeParcelReader.a(parcel, iC)));
                            break;
                        case 6:
                            D(sb, field, FastJsonResponse.y(field, Boolean.valueOf(SafeParcelReader.w(parcel, iC))));
                            break;
                        case 7:
                            D(sb, field, FastJsonResponse.y(field, SafeParcelReader.p(parcel, iC)));
                            break;
                        case 8:
                        case 9:
                            D(sb, field, FastJsonResponse.y(field, SafeParcelReader.g(parcel, iC)));
                            break;
                        case 10:
                            Bundle bundleF = SafeParcelReader.f(parcel, iC);
                            HashMap map2 = new HashMap();
                            for (String str2 : bundleF.keySet()) {
                                map2.put(str2, (String) Preconditions.k(bundleF.getString(str2)));
                            }
                            D(sb, field, FastJsonResponse.y(field, map2));
                            break;
                        case 11:
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        default:
                            StringBuilder sb2 = new StringBuilder(36);
                            sb2.append("Unknown field out type = ");
                            sb2.append(i10);
                            throw new IllegalArgumentException(sb2.toString());
                    }
                } else if (field.f7573s) {
                    sb.append("[");
                    switch (field.f7572r) {
                        case 0:
                            ArrayUtils.f(sb, SafeParcelReader.j(parcel, iC));
                            break;
                        case 1:
                            ArrayUtils.h(sb, SafeParcelReader.d(parcel, iC));
                            break;
                        case 2:
                            ArrayUtils.g(sb, SafeParcelReader.l(parcel, iC));
                            break;
                        case 3:
                            ArrayUtils.e(sb, SafeParcelReader.i(parcel, iC));
                            break;
                        case 4:
                            ArrayUtils.d(sb, SafeParcelReader.h(parcel, iC));
                            break;
                        case 5:
                            ArrayUtils.h(sb, SafeParcelReader.b(parcel, iC));
                            break;
                        case 6:
                            ArrayUtils.i(sb, SafeParcelReader.e(parcel, iC));
                            break;
                        case 7:
                            ArrayUtils.j(sb, SafeParcelReader.q(parcel, iC));
                            break;
                        case 8:
                        case 9:
                        case 10:
                            throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                        case 11:
                            Parcel[] parcelArrN = SafeParcelReader.n(parcel, iC);
                            int length = parcelArrN.length;
                            for (int i11 = 0; i11 < length; i11++) {
                                if (i11 > 0) {
                                    sb.append(",");
                                }
                                parcelArrN[i11].setDataPosition(0);
                                B(sb, field.g4(), parcelArrN[i11]);
                            }
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out.");
                    }
                    sb.append("]");
                } else {
                    switch (field.f7572r) {
                        case 0:
                            sb.append(SafeParcelReader.E(parcel, iC));
                            break;
                        case 1:
                            sb.append(SafeParcelReader.c(parcel, iC));
                            break;
                        case 2:
                            sb.append(SafeParcelReader.G(parcel, iC));
                            break;
                        case 3:
                            sb.append(SafeParcelReader.A(parcel, iC));
                            break;
                        case 4:
                            sb.append(SafeParcelReader.y(parcel, iC));
                            break;
                        case 5:
                            sb.append(SafeParcelReader.a(parcel, iC));
                            break;
                        case 6:
                            sb.append(SafeParcelReader.w(parcel, iC));
                            break;
                        case 7:
                            String strP = SafeParcelReader.p(parcel, iC);
                            sb.append("\"");
                            sb.append(JsonUtils.a(strP));
                            sb.append("\"");
                            break;
                        case 8:
                            byte[] bArrG = SafeParcelReader.g(parcel, iC);
                            sb.append("\"");
                            sb.append(Base64Utils.c(bArrG));
                            sb.append("\"");
                            break;
                        case 9:
                            byte[] bArrG2 = SafeParcelReader.g(parcel, iC);
                            sb.append("\"");
                            sb.append(Base64Utils.d(bArrG2));
                            sb.append("\"");
                            break;
                        case 10:
                            Bundle bundleF2 = SafeParcelReader.f(parcel, iC);
                            Set<String> setKeySet = bundleF2.keySet();
                            sb.append("{");
                            boolean z11 = true;
                            for (String str3 : setKeySet) {
                                if (!z11) {
                                    sb.append(",");
                                }
                                sb.append("\"");
                                sb.append(str3);
                                sb.append("\":\"");
                                sb.append(JsonUtils.a(bundleF2.getString(str3)));
                                sb.append("\"");
                                z11 = false;
                            }
                            sb.append("}");
                            break;
                        case 11:
                            Parcel parcelM = SafeParcelReader.m(parcel, iC);
                            parcelM.setDataPosition(0);
                            B(sb, field.g4(), parcelM);
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out");
                    }
                }
                z10 = true;
            }
        }
        if (parcel.dataPosition() == iK) {
            sb.append('}');
            return;
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("Overread allowed size end=");
        sb3.append(iK);
        throw new SafeParcelReader.ParseException(sb3.toString(), parcel);
    }

    private static final void C(StringBuilder sb, int i10, Object obj) {
        switch (i10) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb.append(obj);
                return;
            case 7:
                sb.append("\"");
                sb.append(JsonUtils.a(Preconditions.k(obj).toString()));
                sb.append("\"");
                return;
            case 8:
                sb.append("\"");
                sb.append(Base64Utils.c((byte[]) obj));
                sb.append("\"");
                return;
            case 9:
                sb.append("\"");
                sb.append(Base64Utils.d((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                MapUtils.a(sb, (HashMap) Preconditions.k(obj));
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                StringBuilder sb2 = new StringBuilder(26);
                sb2.append("Unknown type = ");
                sb2.append(i10);
                throw new IllegalArgumentException(sb2.toString());
        }
    }

    private static final void D(StringBuilder sb, FastJsonResponse.Field<?, ?> field, Object obj) {
        if (!field.f7571q) {
            C(sb, field.f7570p, obj);
            return;
        }
        ArrayList arrayList = (ArrayList) obj;
        sb.append("[");
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (i10 != 0) {
                sb.append(",");
            }
            C(sb, field.f7570p, arrayList.get(i10));
        }
        sb.append("]");
    }

    public final Parcel A() {
        int i10 = this.f7605t;
        if (i10 == 0) {
            int iA = SafeParcelWriter.a(this.f7601p);
            this.f7606u = iA;
            SafeParcelWriter.b(this.f7601p, iA);
            this.f7605t = 2;
        } else if (i10 == 1) {
            SafeParcelWriter.b(this.f7601p, this.f7606u);
            this.f7605t = 2;
        }
        return this.f7601p;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Map<String, FastJsonResponse.Field<?, ?>> h() {
        zan zanVar = this.f7603r;
        if (zanVar == null) {
            return null;
        }
        return zanVar.W3((String) Preconditions.k(this.f7604s));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final String toString() {
        Preconditions.l(this.f7603r, "Cannot convert to JSON on client side.");
        Parcel parcelA = A();
        parcelA.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        B(sb, (Map) Preconditions.k(this.f7603r.W3((String) Preconditions.k(this.f7604s))), parcelA);
        return sb.toString();
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public final Object v(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f7600o);
        SafeParcelWriter.r(parcel, 2, A(), false);
        int i11 = this.f7602q;
        SafeParcelWriter.s(parcel, 3, i11 != 0 ? i11 != 1 ? this.f7603r : this.f7603r : null, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean x(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }
}
