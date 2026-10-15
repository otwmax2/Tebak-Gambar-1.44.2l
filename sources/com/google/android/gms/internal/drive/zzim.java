package com.google.android.gms.internal.drive;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.DriveId;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zzim extends com.google.android.gms.drive.metadata.internal.zzm<DriveId> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzim f22062e = new zzim();

    private zzim() {
        super("driveId", Arrays.asList("sqlId", "resourceId", "mimeType"), Arrays.asList("dbInstanceId"), 4100000);
    }

    @Override // com.google.android.gms.drive.metadata.zza
    protected final boolean e(DataHolder dataHolder, int i10, int i11) {
        Iterator<String> it = c().iterator();
        while (it.hasNext()) {
            if (!dataHolder.d4(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.drive.metadata.zza
    protected final /* synthetic */ Object f(DataHolder dataHolder, int i10, int i11) {
        long j10 = dataHolder.Z3().getLong("dbInstanceId");
        boolean zEquals = "application/vnd.google-apps.folder".equals(dataHolder.b4(zzhs.f22052x.getName(), i10, i11));
        String strB4 = dataHolder.b4("resourceId", i10, i11);
        return new DriveId("generated-android-null".equals(strB4) ? null : strB4, Long.valueOf(dataHolder.Y3("sqlId", i10, i11)).longValue(), j10, zEquals ? 1 : 0);
    }
}
