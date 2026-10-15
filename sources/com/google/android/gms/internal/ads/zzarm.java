package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager;
import android.os.Build;
import java.io.ByteArrayInputStream;
import java.lang.reflect.InvocationTargetException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzarm extends zzasm {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final zzasn f9819j = new zzasn();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Context f9820i;

    public zzarm(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11, Context context, zzamo zzamoVar) {
        super(zzaqxVar, "zOES1C/X3KjGUl735PWTCIIeaiX8ogaBw1coqgLpdTjY6Symxbx5mbEMtlABs9zo", "hsHYBstzTMhc90xao/PTJuPT724yCZ6q03cV54fb+14=", zzamvVar, i10, 27);
        this.f9820i = context;
    }

    private final String d() {
        try {
            if (this.f9855b.l() != null) {
                this.f9855b.l().get();
            }
            zzans zzansVarC = this.f9855b.c();
            if (zzansVarC == null || !zzansVarC.t0()) {
                return null;
            }
            return zzansVarC.I0();
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        int i10;
        zzaoi zzaoiVar;
        AtomicReference atomicReferenceA = f9819j.a(this.f9820i.getPackageName());
        synchronized (atomicReferenceA) {
            zzaoi zzaoiVar2 = (zzaoi) atomicReferenceA.get();
            if (zzaoiVar2 == null || zzarb.g(zzaoiVar2.f9542b) || zzaoiVar2.f9542b.equals("E") || zzaoiVar2.f9542b.equals("0000000000000000000000000000000000000000000000000000000000000000")) {
                if (zzarb.g(null)) {
                    (!zzarb.g(null) ? Boolean.FALSE : Boolean.FALSE).booleanValue();
                    i10 = 3;
                } else {
                    i10 = 5;
                }
                Boolean boolValueOf = Boolean.valueOf(i10 == 3);
                Boolean bool = (Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10161a2);
                String strC = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.Z1)).booleanValue() ? c() : null;
                if (bool.booleanValue() && this.f9855b.p() && zzarb.g(strC)) {
                    strC = d();
                }
                zzaoi zzaoiVar3 = new zzaoi((String) this.f9859f.invoke(null, this.f9820i, boolValueOf, strC));
                if (zzarb.g(zzaoiVar3.f9542b) || zzaoiVar3.f9542b.equals("E")) {
                    int i11 = i10 - 1;
                    if (i11 == 3) {
                        String strD = d();
                        if (!zzarb.g(strD)) {
                            zzaoiVar3.f9542b = strD;
                        }
                    } else if (i11 == 4) {
                        throw null;
                    }
                }
                atomicReferenceA.set(zzaoiVar3);
            }
            zzaoiVar = (zzaoi) atomicReferenceA.get();
        }
        synchronized (this.f9858e) {
            if (zzaoiVar != null) {
                this.f9858e.x0(zzaoiVar.f9542b);
                this.f9858e.N(zzaoiVar.f9543c);
                this.f9858e.P(zzaoiVar.f9544d);
                this.f9858e.h0(zzaoiVar.f9545e);
                this.f9858e.w0(zzaoiVar.f9546f);
            }
        }
    }

    protected final String c() {
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            byte[] bArrI = zzarb.i((String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10172b2));
            ArrayList arrayList = new ArrayList();
            arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(bArrI)));
            if (!Build.TYPE.equals("user")) {
                arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(zzarb.i((String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10183c2)))));
            }
            Context context = this.f9820i;
            String packageName = context.getPackageName();
            this.f9855b.k();
            if (Build.VERSION.SDK_INT <= 30 && !Build.VERSION.CODENAME.equals("S")) {
                return null;
            }
            final zzfvc zzfvcVarD = zzfvc.D();
            context.getPackageManager().requestChecksums(packageName, false, 8, arrayList, new PackageManager.OnChecksumsReadyListener() { // from class: com.google.android.gms.internal.ads.zzaso
                @Override // android.content.pm.PackageManager.OnChecksumsReadyListener
                public final void onChecksumsReady(List list) {
                    zzfvc zzfvcVar = zzfvcVarD;
                    if (list == null) {
                        zzfvcVar.h(null);
                        return;
                    }
                    try {
                        int size = list.size();
                        for (int i10 = 0; i10 < size; i10++) {
                            ApkChecksum apkChecksum = (ApkChecksum) list.get(i10);
                            if (apkChecksum.getType() == 8) {
                                zzfvcVar.h(zzarb.c(apkChecksum.getValue()));
                                return;
                            }
                        }
                        zzfvcVar.h(null);
                    } catch (Throwable unused) {
                        zzfvcVar.h(null);
                    }
                }
            });
            return (String) zzfvcVarD.get();
        } catch (PackageManager.NameNotFoundException | InterruptedException | NoClassDefFoundError | CertificateEncodingException | CertificateException | ExecutionException unused) {
            return null;
        }
    }
}
