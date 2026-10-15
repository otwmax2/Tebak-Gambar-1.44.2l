###### Class com.google.android.gms.games.achievement.Achievement (com.google.android.gms.games.achievement.Achievement)
.class public interface abstract Lcom/google/android/gms/games/achievement/Achievement;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/achievement/Achievement$AchievementType;,
        Lcom/google/android/gms/games/achievement/Achievement$AchievementState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/Freezable<",
        "Lcom/google/android/gms/games/achievement/Achievement;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract D0()Ljava/lang/String;
.end method

.method public abstract P()F
.end method

.method public abstract R()Lcom/google/android/gms/games/Player;
.end method

.method public abstract W2()J
.end method

.method public abstract Y()Landroid/net/Uri;
.end method

.method public abstract Y1()Ljava/lang/String;
.end method

.method public abstract f0()Ljava/lang/String;
.end method

.method public abstract g2()Landroid/net/Uri;
.end method

.method public abstract getApplicationId()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRevealedImageUrl()Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getState()I
.end method

.method public abstract getUnlockedImageUrl()Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract j3()I
.end method

.method public abstract o()I
.end method

.method public abstract r2()I
.end method

.method public abstract t1()J
.end method

###### Class com.google.android.gms.games.achievement.Achievement.AchievementState (com.google.android.gms.games.achievement.Achievement$AchievementState)
.class public interface abstract annotation Lcom/google/android/gms/games/achievement/Achievement$AchievementState;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/achievement/Achievement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "AchievementState"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.gms.games.achievement.Achievement.AchievementType (com.google.android.gms.games.achievement.Achievement$AchievementType)
.class public interface abstract annotation Lcom/google/android/gms/games/achievement/Achievement$AchievementType;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/achievement/Achievement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "AchievementType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
