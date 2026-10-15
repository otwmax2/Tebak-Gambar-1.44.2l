package com.vungle.warren.model;

import com.google.gson.l;
import com.google.gson.o;

/* JADX INFO: loaded from: classes2.dex */
public class JsonUtil {
    public static boolean getAsBoolean(l lVar, String str, boolean z10) {
        return hasNonNull(lVar, str) ? lVar.l().A(str).c() : z10;
    }

    public static int getAsInt(l lVar, String str, int i10) {
        return hasNonNull(lVar, str) ? lVar.l().A(str).j() : i10;
    }

    public static o getAsObject(l lVar, String str) {
        if (hasNonNull(lVar, str)) {
            return lVar.l().A(str).l();
        }
        return null;
    }

    public static String getAsString(l lVar, String str, String str2) {
        return hasNonNull(lVar, str) ? lVar.l().A(str).o() : str2;
    }

    public static boolean hasNonNull(l lVar, String str) {
        if (lVar == null || lVar.q() || !lVar.r()) {
            return false;
        }
        o oVarL = lVar.l();
        return (!oVarL.E(str) || oVarL.A(str) == null || oVarL.A(str).q()) ? false : true;
    }
}
