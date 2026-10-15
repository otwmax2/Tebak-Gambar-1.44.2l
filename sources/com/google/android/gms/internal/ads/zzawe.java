package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.util.Base64;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzawe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzawk f10068a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private final zzaxt f10069b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f10070c;

    private zzawe() {
        this.f10069b = zzaxu.K();
        this.f10070c = false;
        this.f10068a = new zzawk();
    }

    public static zzawe a() {
        return new zzawe();
    }

    private final synchronized String d(int i10) {
        return String.format("id=%s,timestamp=%s,event=%s,data=%s\n", this.f10069b.z(), Long.valueOf(com.google.android.gms.ads.internal.zzt.b().b()), Integer.valueOf(i10 - 1), Base64.encodeToString(((zzaxu) this.f10069b.k()).t(), 3));
    }

    private final synchronized void e(int i10) {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory == null) {
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(externalStorageDirectory, "clearcut_events.txt"), true);
            try {
                try {
                    fileOutputStream.write(d(i10).getBytes());
                } catch (IOException unused) {
                    com.google.android.gms.ads.internal.util.zze.k("Could not write Clearcut to file.");
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused2) {
                        com.google.android.gms.ads.internal.util.zze.k("Could not close Clearcut output stream.");
                    }
                }
            } finally {
                try {
                    fileOutputStream.close();
                } catch (IOException unused3) {
                    com.google.android.gms.ads.internal.util.zze.k("Could not close Clearcut output stream.");
                }
            }
        } catch (FileNotFoundException unused4) {
            com.google.android.gms.ads.internal.util.zze.k("Could not find file for Clearcut");
        }
    }

    private final synchronized void f(int i10) {
        zzaxt zzaxtVar = this.f10069b;
        zzaxtVar.r();
        List listB = zzbar.b();
        ArrayList arrayList = new ArrayList();
        Iterator it = listB.iterator();
        while (it.hasNext()) {
            for (String str : ((String) it.next()).split(",")) {
                try {
                    arrayList.add(Long.valueOf(str));
                } catch (NumberFormatException unused) {
                    com.google.android.gms.ads.internal.util.zze.k("Experiment ID is not a number");
                }
            }
        }
        zzaxtVar.q(arrayList);
        zzawj zzawjVar = new zzawj(this.f10068a, ((zzaxu) this.f10069b.k()).t(), null);
        int i11 = i10 - 1;
        zzawjVar.a(i11);
        zzawjVar.c();
        com.google.android.gms.ads.internal.util.zze.k("Logging Event with event code : ".concat(String.valueOf(Integer.toString(i11, 10))));
    }

    public final synchronized void b(zzawd zzawdVar) {
        if (this.f10070c) {
            try {
                zzawdVar.a(this.f10069b);
            } catch (NullPointerException e10) {
                com.google.android.gms.ads.internal.zzt.q().u(e10, "AdMobClearcutLogger.modify");
            }
        }
    }

    public final synchronized void c(int i10) {
        if (this.f10070c) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10416x4)).booleanValue()) {
                e(i10);
            } else {
                f(i10);
            }
        }
    }

    public zzawe(zzawk zzawkVar) {
        this.f10069b = zzaxu.K();
        this.f10068a = zzawkVar;
        this.f10070c = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10405w4)).booleanValue();
    }
}
