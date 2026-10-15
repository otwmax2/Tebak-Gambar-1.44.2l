package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
final class k implements DynamiteModule.VersionPolicy {
    k() {
    }

    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    public final DynamiteModule.VersionPolicy.SelectionResult a(Context context, String str, DynamiteModule.VersionPolicy.IVersions iVersions) throws DynamiteModule.LoadingException {
        int iA;
        DynamiteModule.VersionPolicy.SelectionResult selectionResult = new DynamiteModule.VersionPolicy.SelectionResult();
        int iB = iVersions.b(context, str);
        selectionResult.f7929a = iB;
        int i10 = 0;
        if (iB != 0) {
            iA = iVersions.a(context, str, false);
            selectionResult.f7930b = iA;
        } else {
            iA = iVersions.a(context, str, true);
            selectionResult.f7930b = iA;
        }
        int i11 = selectionResult.f7929a;
        if (i11 == 0) {
            if (iA == 0) {
                selectionResult.f7931c = 0;
            }
            return selectionResult;
        }
        i10 = i11;
        if (iA >= i10) {
            selectionResult.f7931c = 1;
        } else {
            selectionResult.f7931c = -1;
        }
        return selectionResult;
    }
}
