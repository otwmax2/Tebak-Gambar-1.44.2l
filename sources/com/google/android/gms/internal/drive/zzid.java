package com.google.android.gms.internal.drive;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.CustomPropertyKey;
import com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties;
import java.util.Arrays;
import o.d;

/* JADX INFO: loaded from: classes2.dex */
public class zzid extends com.google.android.gms.drive.metadata.internal.zzm<AppVisibleCustomProperties> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final com.google.android.gms.drive.metadata.internal.zzg f22055e = new zzie();

    public zzid(int i10) {
        super("customProperties", Arrays.asList("hasCustomProperties", "sqlId"), Arrays.asList("customPropertiesExtra", "customPropertiesExtraHolder"), 5000000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void g(DataHolder dataHolder) {
        Bundle bundleZ3 = dataHolder.Z3();
        if (bundleZ3 == null) {
            return;
        }
        synchronized (dataHolder) {
            DataHolder dataHolder2 = (DataHolder) bundleZ3.getParcelable("customPropertiesExtraHolder");
            if (dataHolder2 != null) {
                dataHolder2.close();
                bundleZ3.remove("customPropertiesExtraHolder");
            }
        }
    }

    private static AppVisibleCustomProperties i(DataHolder dataHolder, int i10, int i11) {
        Bundle bundleZ3 = dataHolder.Z3();
        SparseArray sparseParcelableArray = bundleZ3.getSparseParcelableArray("customPropertiesExtra");
        if (sparseParcelableArray == null) {
            if (bundleZ3.getParcelable("customPropertiesExtraHolder") != null) {
                synchronized (dataHolder) {
                    DataHolder dataHolder2 = (DataHolder) dataHolder.Z3().getParcelable("customPropertiesExtraHolder");
                    if (dataHolder2 != null) {
                        try {
                            Bundle bundleZ32 = dataHolder2.Z3();
                            String string = bundleZ32.getString("entryIdColumn");
                            String string2 = bundleZ32.getString("keyColumn");
                            String string3 = bundleZ32.getString("visibilityColumn");
                            String string4 = bundleZ32.getString("valueColumn");
                            d dVar = new d();
                            for (int i12 = 0; i12 < dataHolder2.getCount(); i12++) {
                                int iC4 = dataHolder2.c4(i12);
                                long jY3 = dataHolder2.Y3(string, i12, iC4);
                                String strB4 = dataHolder2.b4(string2, i12, iC4);
                                int iX3 = dataHolder2.X3(string3, i12, iC4);
                                com.google.android.gms.drive.metadata.internal.zzc zzcVar = new com.google.android.gms.drive.metadata.internal.zzc(new CustomPropertyKey(strB4, iX3), dataHolder2.b4(string4, i12, iC4));
                                AppVisibleCustomProperties.zza zzaVar = (AppVisibleCustomProperties.zza) dVar.g(jY3);
                                if (zzaVar == null) {
                                    zzaVar = new AppVisibleCustomProperties.zza();
                                    dVar.k(jY3, zzaVar);
                                }
                                zzaVar.a(zzcVar);
                            }
                            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
                            for (int i13 = 0; i13 < dataHolder.getCount(); i13++) {
                                AppVisibleCustomProperties.zza zzaVar2 = (AppVisibleCustomProperties.zza) dVar.g(dataHolder.Y3("sqlId", i13, dataHolder.c4(i13)));
                                if (zzaVar2 != null) {
                                    sparseArray.append(i13, zzaVar2.b());
                                }
                            }
                            dataHolder.Z3().putSparseParcelableArray("customPropertiesExtra", sparseArray);
                        } finally {
                            dataHolder2.close();
                            dataHolder.Z3().remove("customPropertiesExtraHolder");
                        }
                    }
                }
                sparseParcelableArray = bundleZ3.getSparseParcelableArray("customPropertiesExtra");
            }
            if (sparseParcelableArray == null) {
                return AppVisibleCustomProperties.f7795p;
            }
        }
        return (AppVisibleCustomProperties) sparseParcelableArray.get(i10, AppVisibleCustomProperties.f7795p);
    }

    @Override // com.google.android.gms.drive.metadata.zza
    protected final /* synthetic */ Object f(DataHolder dataHolder, int i10, int i11) {
        return i(dataHolder, i10, i11);
    }
}
