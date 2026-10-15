###### Class com.google.android.gms.games.stats.Stats (com.google.android.gms.games.stats.Stats)
.class public interface abstract Lcom/google/android/gms/games/stats/Stats;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

###### Class com.google.android.gms.games.stats.Stats.LoadPlayerStatsResult (com.google.android.gms.games.stats.Stats$LoadPlayerStatsResult)
.class public interface abstract Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/stats/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadPlayerStatsResult"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation
