package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.SearchableCollectionMetadataField;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public final class zzo extends zzl<DriveId> implements SearchableCollectionMetadataField<DriveId> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzg f7806e = new a();

    public zzo(int i10) {
        super("parents", Collections.emptySet(), Arrays.asList("parentsExtra", "dbInstanceId", "parentsExtraHolder"), 4100000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void i(DataHolder dataHolder) {
        Bundle bundleZ3 = dataHolder.Z3();
        if (bundleZ3 == null) {
            return;
        }
        synchronized (dataHolder) {
            DataHolder dataHolder2 = (DataHolder) bundleZ3.getParcelable("parentsExtraHolder");
            if (dataHolder2 != null) {
                dataHolder2.close();
                bundleZ3.remove("parentsExtraHolder");
            }
        }
    }

    @Override // com.google.android.gms.drive.metadata.internal.zzl, com.google.android.gms.drive.metadata.zza
    protected final /* synthetic */ Object d(Bundle bundle) {
        return d(bundle);
    }

    @Override // com.google.android.gms.drive.metadata.zzb, com.google.android.gms.drive.metadata.zza
    protected final /* synthetic */ Object f(DataHolder dataHolder, int i10, int i11) {
        return f(dataHolder, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zzb
    /* JADX INFO: renamed from: g */
    public final Collection<DriveId> f(DataHolder dataHolder, int i10, int i11) {
        Bundle bundleZ3 = dataHolder.Z3();
        ArrayList parcelableArrayList = bundleZ3.getParcelableArrayList("parentsExtra");
        if (parcelableArrayList == null) {
            if (bundleZ3.getParcelable("parentsExtraHolder") != null) {
                synchronized (dataHolder) {
                    DataHolder dataHolder2 = (DataHolder) dataHolder.Z3().getParcelable("parentsExtraHolder");
                    if (dataHolder2 != null) {
                        try {
                            int count = dataHolder.getCount();
                            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(count);
                            HashMap map = new HashMap(count);
                            for (int i12 = 0; i12 < count; i12++) {
                                int iC4 = dataHolder.c4(i12);
                                ParentDriveIdSet parentDriveIdSet = new ParentDriveIdSet();
                                arrayList.add(parentDriveIdSet);
                                map.put(Long.valueOf(dataHolder.Y3("sqlId", i12, iC4)), parentDriveIdSet);
                            }
                            Bundle bundleZ32 = dataHolder2.Z3();
                            String string = bundleZ32.getString("childSqlIdColumn");
                            String string2 = bundleZ32.getString("parentSqlIdColumn");
                            String string3 = bundleZ32.getString("parentResIdColumn");
                            int count2 = dataHolder2.getCount();
                            for (int i13 = 0; i13 < count2; i13++) {
                                int iC42 = dataHolder2.c4(i13);
                                ParentDriveIdSet parentDriveIdSet2 = (ParentDriveIdSet) map.get(Long.valueOf(dataHolder2.Y3(string, i13, iC42)));
                                parentDriveIdSet2.f7800o.add(new zzq(dataHolder2.b4(string3, i13, iC42), dataHolder2.Y3(string2, i13, iC42), 1));
                            }
                            dataHolder.Z3().putParcelableArrayList("parentsExtra", arrayList);
                        } finally {
                            dataHolder2.close();
                            dataHolder.Z3().remove("parentsExtraHolder");
                        }
                    }
                }
                parcelableArrayList = bundleZ3.getParcelableArrayList("parentsExtra");
            }
            if (parcelableArrayList == null) {
                return null;
            }
        }
        long j10 = bundleZ3.getLong("dbInstanceId");
        ParentDriveIdSet parentDriveIdSet3 = (ParentDriveIdSet) parcelableArrayList.get(i10);
        HashSet hashSet = new HashSet();
        for (zzq zzqVar : parentDriveIdSet3.f7800o) {
            hashSet.add(new DriveId(zzqVar.f7807o, zzqVar.f7808p, j10, zzqVar.f7809q));
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.internal.zzl
    /* JADX INFO: renamed from: h */
    public final Collection<DriveId> d(Bundle bundle) {
        Collection collectionD = super.d(bundle);
        if (collectionD == null) {
            return null;
        }
        return new HashSet(collectionD);
    }
}
