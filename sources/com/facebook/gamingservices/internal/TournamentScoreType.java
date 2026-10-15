package com.facebook.gamingservices.internal;

import java.util.Arrays;

/* JADX INFO: compiled from: TournamentScoreType.kt */
/* JADX INFO: loaded from: classes.dex */
public enum TournamentScoreType {
    NUMERIC,
    TIME;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static TournamentScoreType[] valuesCustom() {
        TournamentScoreType[] tournamentScoreTypeArrValuesCustom = values();
        return (TournamentScoreType[]) Arrays.copyOf(tournamentScoreTypeArrValuesCustom, tournamentScoreTypeArrValuesCustom.length);
    }
}
