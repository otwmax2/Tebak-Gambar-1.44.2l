package com.google.android.gms.internal.drive;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.DriveSpace;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhz extends com.google.android.gms.drive.metadata.internal.zzl<DriveSpace> {
    public zzhz(int i10) {
        super("spaces", Arrays.asList("inDriveSpace", "isAppData", "inGooglePhotosSpace"), Collections.emptySet(), 7000000);
    }

    @Override // com.google.android.gms.drive.metadata.zzb, com.google.android.gms.drive.metadata.zza
    protected final /* synthetic */ Object f(DataHolder dataHolder, int i10, int i11) {
        return f(dataHolder, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zzb
    /* JADX INFO: renamed from: g */
    public final Collection<DriveSpace> f(DataHolder dataHolder, int i10, int i11) {
        ArrayList arrayList = new ArrayList();
        if (dataHolder.V3("inDriveSpace", i10, i11)) {
            arrayList.add(DriveSpace.f7722p);
        }
        if (dataHolder.V3("isAppData", i10, i11)) {
            arrayList.add(DriveSpace.f7723q);
        }
        if (dataHolder.V3("inGooglePhotosSpace", i10, i11)) {
            arrayList.add(DriveSpace.f7724r);
        }
        return arrayList;
    }
}
