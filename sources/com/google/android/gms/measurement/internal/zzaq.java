package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f24447a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f24448b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final String f24449c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final long f24450d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final long f24451e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final zzat f24452f;

    zzaq(zzgi zzgiVar, String str, String str2, String str3, long j10, long j11, Bundle bundle) {
        zzat zzatVar;
        Preconditions.g(str2);
        Preconditions.g(str3);
        this.f24447a = str2;
        this.f24448b = str3;
        this.f24449c = true == TextUtils.isEmpty(str) ? null : str;
        this.f24450d = j10;
        this.f24451e = j11;
        if (j11 != 0 && j11 > j10) {
            zzgiVar.U().r().b("Event created with reverse previous/current timestamps. appId", zzey.v(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            zzatVar = new zzat(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    zzgiVar.U().m().a("Param name can't be null");
                    it.remove();
                } else {
                    Object objJ = zzgiVar.L().j(next, bundle2.get(next));
                    if (objJ == null) {
                        zzgiVar.U().r().b("Param value can't be null", zzgiVar.A().e(next));
                        it.remove();
                    } else {
                        zzgiVar.L().z(bundle2, next, objJ);
                    }
                }
            }
            zzatVar = new zzat(bundle2);
        }
        this.f24452f = zzatVar;
    }

    final zzaq a(zzgi zzgiVar, long j10) {
        return new zzaq(zzgiVar, this.f24449c, this.f24447a, this.f24448b, this.f24450d, j10, this.f24452f);
    }

    public final String toString() {
        return "Event{appId='" + this.f24447a + "', name='" + this.f24448b + "', params=" + this.f24452f.toString() + "}";
    }

    private zzaq(zzgi zzgiVar, String str, String str2, String str3, long j10, long j11, zzat zzatVar) {
        Preconditions.g(str2);
        Preconditions.g(str3);
        Preconditions.k(zzatVar);
        this.f24447a = str2;
        this.f24448b = str3;
        this.f24449c = true == TextUtils.isEmpty(str) ? null : str;
        this.f24450d = j10;
        this.f24451e = j11;
        if (j11 != 0 && j11 > j10) {
            zzgiVar.U().r().c("Event created with reverse previous/current timestamps. appId, name", zzey.v(str2), zzey.v(str3));
        }
        this.f24452f = zzatVar;
    }
}
