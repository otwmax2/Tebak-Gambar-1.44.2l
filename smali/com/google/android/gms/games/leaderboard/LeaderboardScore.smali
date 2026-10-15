###### Class com.google.android.gms.games.leaderboard.LeaderboardScore (com.google.android.gms.games.leaderboard.LeaderboardScore)
.class public interface abstract Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable<",
        "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract K0()Ljava/lang/String;
.end method

.method public abstract M2()Ljava/lang/String;
.end method

.method public abstract X2()Landroid/net/Uri;
.end method

.method public abstract Z2()Ljava/lang/String;
.end method

.method public abstract c0()Lcom/google/android/gms/games/Player;
.end method

.method public abstract g1()J
.end method

.method public abstract getScoreHolderHiResImageUrl()Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getScoreHolderIconImageUrl()Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract l1()J
.end method

.method public abstract n3()Landroid/net/Uri;
.end method

.method public abstract o1()J
.end method

.method public abstract z3()Ljava/lang/String;
.end method
