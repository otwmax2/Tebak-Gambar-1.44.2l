package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
final class f implements DynamiteModule.VersionPolicy {
    f() {
    }

    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    public final DynamiteModule.VersionPolicy.SelectionResult a(Context context, String str, DynamiteModule.VersionPolicy.IVersions iVersions) throws DynamiteModule.LoadingException {
        DynamiteModule.VersionPolicy.SelectionResult selectionResult = new DynamiteModule.VersionPolicy.SelectionResult();
        int iB = iVersions.b(context, str);
        selectionResult.f7929a = iB;
        if (iB != 0) {
            selectionResult.f7931c = -1;
        } else {
            int iA = iVersions.a(context, str, true);
            selectionResult.f7930b = iA;
            if (iA != 0) {
                selectionResult.f7931c = 1;
            }
        }
        return selectionResult;
    }
}
