package com.google.android.gms.internal.ads;

import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfhg extends zzfhc {
    public zzfhg(zzfgv zzfgvVar, HashSet hashSet, JSONObject jSONObject, long j10, byte[] bArr) {
        super(zzfgvVar, hashSet, jSONObject, j10, null);
    }

    private final void c(String str) {
        zzffz zzffzVarA = zzffz.a();
        if (zzffzVarA != null) {
            for (zzffo zzffoVar : zzffzVarA.c()) {
                if (this.f18212c.contains(zzffoVar.h())) {
                    zzffoVar.g().d(str, this.f18214e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzfhd
    /* JADX INFO: renamed from: a */
    public final void onPostExecute(String str) {
        c(str);
        super.onPostExecute(str);
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Object doInBackground(Object[] objArr) {
        return this.f18213d.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfhd, android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Object obj) {
        String str = (String) obj;
        c(str);
        super.onPostExecute(str);
    }
}
