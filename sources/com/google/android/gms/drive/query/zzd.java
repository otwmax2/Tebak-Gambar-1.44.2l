package com.google.android.gms.drive.query;

import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.query.internal.zzj;
import com.google.android.gms.drive.query.internal.zzx;
import com.vungle.mediation.BuildConfig;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzd implements zzj<String> {
    @Override // com.google.android.gms.drive.query.internal.zzj
    public final /* synthetic */ String a(String str) {
        return String.format("not(%s)", str);
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    public final /* synthetic */ String b(MetadataField metadataField) {
        return String.format("fieldOnly(%s)", metadataField.getName());
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    public final /* synthetic */ String c(zzx zzxVar, MetadataField metadataField, Object obj) {
        return String.format("cmp(%s,%s,%s)", zzxVar.V3(), metadataField.getName(), obj);
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    public final /* synthetic */ String d(zzx zzxVar, List<String> list) {
        StringBuilder sb = new StringBuilder(String.valueOf(zzxVar.V3()).concat("("));
        String str = BuildConfig.FLAVOR;
        for (String str2 : list) {
            sb.append(str);
            sb.append(str2);
            str = ",";
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    public final /* synthetic */ String e(MetadataField metadataField, Object obj) {
        return String.format("has(%s,%s)", metadataField.getName(), obj);
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    public final /* synthetic */ String f(com.google.android.gms.drive.metadata.zzb zzbVar, Object obj) {
        return String.format("contains(%s,%s)", zzbVar.getName(), obj);
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    public final /* synthetic */ String g(String str) {
        return String.format("fullTextSearch(%s)", str);
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    public final /* synthetic */ String k0() {
        return "all()";
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    public final /* synthetic */ String o0() {
        return "ownedByMe()";
    }
}
