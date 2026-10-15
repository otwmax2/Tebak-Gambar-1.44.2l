package com.facebook.gamingservices.internal;

import java.util.Arrays;

/* JADX INFO: compiled from: TournamentSortOrder.kt */
/* JADX INFO: loaded from: classes.dex */
public enum TournamentSortOrder {
    LowerIsBetter("LOWER_IS_BETTER"),
    HigherIsBetter("HIGHER_IS_BETTER");

    private final String rawValue;

    TournamentSortOrder(String str) {
        this.rawValue = str;
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static TournamentSortOrder[] valuesCustom() {
        TournamentSortOrder[] tournamentSortOrderArrValuesCustom = values();
        return (TournamentSortOrder[]) Arrays.copyOf(tournamentSortOrderArrValuesCustom, tournamentSortOrderArrValuesCustom.length);
    }

    public final String getRawValue() {
        return this.rawValue;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.rawValue;
    }
}
