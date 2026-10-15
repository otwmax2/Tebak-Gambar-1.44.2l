package com.google.android.gms.common;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.common.zzag;
import com.google.errorprone.annotations.RestrictedInheritance;
import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@ShowFirstParty
@KeepForSdk
@RestrictedInheritance(allowedOnPath = ".*javatests/com/google/android/gmscore/integ/client/common/robolectric/.*", explanation = "Sub classing of GMS Core's APIs are restricted to testing fakes.", link = "go/gmscore-restrictedinheritance")
public class GmsSignatureVerifier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final b f6909a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final b f6910b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final HashMap f6911c;

    static {
        p pVar = new p();
        pVar.d("com.google.android.gms");
        pVar.a(204200000L);
        j jVar = l.f7540d;
        pVar.c(zzag.s(jVar.Q4(), l.f7538b.Q4()));
        j jVar2 = l.f7539c;
        pVar.b(zzag.s(jVar2.Q4(), l.f7537a.Q4()));
        f6909a = pVar.e();
        p pVar2 = new p();
        pVar2.d("com.android.vending");
        pVar2.a(82240000L);
        pVar2.c(zzag.r(jVar.Q4()));
        pVar2.b(zzag.r(jVar2.Q4()));
        f6910b = pVar2.e();
        f6911c = new HashMap();
    }
}
