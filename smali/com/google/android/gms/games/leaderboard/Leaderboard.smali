###### Class com.google.android.gms.games.leaderboard.Leaderboard (com.google.android.gms.games.leaderboard.Leaderboard)
.class public interface abstract Lcom/google/android/gms/games/leaderboard/Leaderboard;
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
        "Lcom/google/android/gms/games/leaderboard/Leaderboard;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract E1()I
.end method

.method public abstract T2()Ljava/lang/String;
.end method

.method public abstract W0()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;",
            ">;"
        }
    .end annotation
.end method

.method public abstract g()Landroid/net/Uri;
.end method

.method public abstract getIconImageUrl()Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract s()Ljava/lang/String;
.end method

.method public abstract u()Lcom/google/android/gms/games/Game;
.end method
