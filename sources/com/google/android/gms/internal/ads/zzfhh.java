package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfhh extends zzfhc {
    public zzfhh(zzfgv zzfgvVar, HashSet hashSet, JSONObject jSONObject, long j10, byte[] bArr) {
        super(zzfgvVar, hashSet, jSONObject, j10, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzfhd
    /* JADX INFO: renamed from: a */
    public final void onPostExecute(String str) {
        zzffz zzffzVarA;
        if (!TextUtils.isEmpty(str) && (zzffzVarA = zzffz.a()) != null) {
            for (zzffo zzffoVar : zzffzVarA.c()) {
                if (this.f18212c.contains(zzffoVar.h())) {
                    zzffoVar.g().e(str, this.f18214e);
                }
            }
        }
        super.onPostExecute(str);
    }

    @Override // android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        if (zzfgp.j(this.f18213d, this.f18216b.a())) {
            return null;
        }
        this.f18216b.e(this.f18213d);
        return this.f18213d.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfhd, android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        onPostExecute((String) obj);
    }
}
