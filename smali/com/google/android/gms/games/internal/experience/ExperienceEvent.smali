###### Class com.google.android.gms.games.internal.experience.ExperienceEvent (com.google.android.gms.games.internal.experience.ExperienceEvent)
.class public interface abstract Lcom/google/android/gms/games/internal/experience/ExperienceEvent;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/Freezable<",
        "Lcom/google/android/gms/games/internal/experience/ExperienceEvent;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract I()Ljava/lang/String;
.end method

.method public abstract O0()J
.end method

.method public abstract T()J
.end method

.method public abstract g()Landroid/net/Uri;
.end method

.method public abstract getIconImageUrl()Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract i0()Ljava/lang/String;
.end method

.method public abstract j1()Ljava/lang/String;
.end method

.method public abstract k3()J
.end method

.method public abstract o()I
.end method

.method public abstract s2()I
.end method

.method public abstract u()Lcom/google/android/gms/games/Game;
.end method
