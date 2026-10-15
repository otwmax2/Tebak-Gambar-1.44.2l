package com.google.android.gms.games.leaderboard;

import android.util.SparseArray;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.games.zzfa;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class ScoreSubmissionData {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String[] f8217e = {"leaderboardId", "playerId", "timeSpan", "hasResult", "rawScore", "formattedScore", "newBest", "scoreTag"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f8218a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f8219b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f8220c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SparseArray<Result> f8221d = new SparseArray<>();

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    public static final class Result {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f8222a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f8223b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f8224c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f8225d;

        public Result(long j10, String str, String str2, boolean z10) {
            this.f8222a = j10;
            this.f8223b = str;
            this.f8224c = str2;
            this.f8225d = z10;
        }

        public final String toString() {
            return Objects.d(this).a("RawScore", Long.valueOf(this.f8222a)).a("FormattedScore", this.f8223b).a("ScoreTag", this.f8224c).a("NewBest", Boolean.valueOf(this.f8225d)).toString();
        }
    }

    public ScoreSubmissionData(DataHolder dataHolder) {
        this.f8220c = dataHolder.a4();
        int count = dataHolder.getCount();
        Preconditions.a(count == 3);
        for (int i10 = 0; i10 < count; i10++) {
            int iC4 = dataHolder.c4(i10);
            if (i10 == 0) {
                this.f8218a = dataHolder.b4("leaderboardId", i10, iC4);
                this.f8219b = dataHolder.b4("playerId", i10, iC4);
            }
            if (dataHolder.V3("hasResult", i10, iC4)) {
                this.f8221d.put(dataHolder.X3("timeSpan", i10, iC4), new Result(dataHolder.Y3("rawScore", i10, iC4), dataHolder.b4("formattedScore", i10, iC4), dataHolder.b4("scoreTag", i10, iC4), dataHolder.V3("newBest", i10, iC4)));
            }
        }
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelperA = Objects.d(this).a("PlayerId", this.f8219b).a("StatusCode", Integer.valueOf(this.f8220c));
        for (int i10 = 0; i10 < 3; i10++) {
            Result result = this.f8221d.get(i10);
            toStringHelperA.a("TimesSpan", zzfa.a(i10));
            toStringHelperA.a("Result", result == null ? "null" : result.toString());
        }
        return toStringHelperA.toString();
    }
}
