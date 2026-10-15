###### Class com.google.android.gms.games.leaderboard.LeaderboardVariant (com.google.android.gms.games.leaderboard.LeaderboardVariant)
.class public interface abstract Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/leaderboard/LeaderboardVariant$TimeSpan;,
        Lcom/google/android/gms/games/leaderboard/LeaderboardVariant$Collection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable<",
        "Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract G3()I
.end method

.method public abstract J2()J
.end method

.method public abstract N3()Ljava/lang/String;
.end method

.method public abstract R2()Ljava/lang/String;
.end method

.method public abstract S1()J
.end method

.method public abstract U2()I
.end method

.method public abstract U3()Ljava/lang/String;
.end method

.method public abstract Z()Ljava/lang/String;
.end method

.method public abstract g0()Z
.end method

.method public abstract g3()J
.end method

.method public abstract i3()Ljava/lang/String;
.end method

.method public abstract u2()Ljava/lang/String;
.end method

###### Class com.google.android.gms.games.leaderboard.LeaderboardVariant.Collection (com.google.android.gms.games.leaderboard.LeaderboardVariant$Collection)
.class public interface abstract annotation Lcom/google/android/gms/games/leaderboard/LeaderboardVariant$Collection;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Collection"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.gms.games.leaderboard.LeaderboardVariant.TimeSpan (com.google.android.gms.games.leaderboard.LeaderboardVariant$TimeSpan)
.class public interface abstract annotation Lcom/google/android/gms/games/leaderboard/LeaderboardVariant$TimeSpan;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "TimeSpan"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
