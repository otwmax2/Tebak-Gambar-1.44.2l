###### Class com.google.android.gms.games.achievement.Achievements (com.google.android.gms.games.achievement.Achievements)
.class public interface abstract Lcom/google/android/gms/games/achievement/Achievements;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;,
        Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

###### Class com.google.android.gms.games.achievement.Achievements.LoadAchievementsResult (com.google.android.gms.games.achievement.Achievements$LoadAchievementsResult)
.class public interface abstract Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/achievement/Achievements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadAchievementsResult"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

###### Class com.google.android.gms.games.achievement.Achievements.UpdateAchievementResult (com.google.android.gms.games.achievement.Achievements$UpdateAchievementResult)
.class public interface abstract Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/achievement/Achievements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdateAchievementResult"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation
