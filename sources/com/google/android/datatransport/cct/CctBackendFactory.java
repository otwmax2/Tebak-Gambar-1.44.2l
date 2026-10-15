package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import m3.h;
import m3.m;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class CctBackendFactory implements m3.d {
    @Override // m3.d
    public m create(h hVar) {
        return new d(hVar.b(), hVar.e(), hVar.d());
    }
}
