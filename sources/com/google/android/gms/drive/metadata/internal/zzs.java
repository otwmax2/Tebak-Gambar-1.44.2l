package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public final class zzs extends com.google.android.gms.drive.metadata.zzb<String> {
    public zzs(String str, int i10) {
        super(str, Collections.singleton(str), Collections.emptySet(), 4300000);
    }

    @Override // com.google.android.gms.drive.metadata.zza
    protected final /* synthetic */ Object d(Bundle bundle) {
        return bundle.getStringArrayList(getName());
    }

    @Override // com.google.android.gms.drive.metadata.zzb, com.google.android.gms.drive.metadata.zza
    protected final /* synthetic */ Object f(DataHolder dataHolder, int i10, int i11) {
        return f(dataHolder, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zzb
    /* JADX INFO: renamed from: g */
    public final Collection<String> f(DataHolder dataHolder, int i10, int i11) {
        try {
            String strB4 = dataHolder.b4(getName(), i10, i11);
            if (strB4 == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = new JSONArray(strB4);
            for (int i12 = 0; i12 < jSONArray.length(); i12++) {
                arrayList.add(jSONArray.getString(i12));
            }
            return Collections.unmodifiableCollection(arrayList);
        } catch (JSONException e10) {
            throw new IllegalStateException("DataHolder supplied invalid JSON", e10);
        }
    }
}
