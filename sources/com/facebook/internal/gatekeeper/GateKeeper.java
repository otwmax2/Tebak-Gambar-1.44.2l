package com.facebook.internal.gatekeeper;

import t9.m;

/* JADX INFO: compiled from: GateKeeper.kt */
/* JADX INFO: loaded from: classes.dex */
public final class GateKeeper {
    private final String name;
    private final boolean value;

    public GateKeeper(String str, boolean z10) {
        m.e(str, "name");
        this.name = str;
        this.value = z10;
    }

    public static /* synthetic */ GateKeeper copy$default(GateKeeper gateKeeper, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = gateKeeper.name;
        }
        if ((i10 & 2) != 0) {
            z10 = gateKeeper.value;
        }
        return gateKeeper.copy(str, z10);
    }

    public final String component1() {
        return this.name;
    }

    public final boolean component2() {
        return this.value;
    }

    public final GateKeeper copy(String str, boolean z10) {
        m.e(str, "name");
        return new GateKeeper(str, z10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GateKeeper)) {
            return false;
        }
        GateKeeper gateKeeper = (GateKeeper) obj;
        return m.a(this.name, gateKeeper.name) && this.value == gateKeeper.value;
    }

    public final String getName() {
        return this.name;
    }

    public final boolean getValue() {
        return this.value;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    public int hashCode() {
        int iHashCode = this.name.hashCode() * 31;
        boolean z10 = this.value;
        ?? r12 = z10;
        if (z10) {
            r12 = 1;
        }
        return iHashCode + r12;
    }

    public String toString() {
        return "GateKeeper(name=" + this.name + ", value=" + this.value + ')';
    }
}
