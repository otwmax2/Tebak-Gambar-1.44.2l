###### Class com.google.android.gms.games.snapshot.SnapshotMetadata (com.google.android.gms.games.snapshot.SnapshotMetadata)
.class public interface abstract Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/Freezable<",
        "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract A0()J
.end method

.method public abstract B3()F
.end method

.method public abstract G1()J
.end method

.method public abstract L3()Ljava/lang/String;
.end method

.method public abstract Q0()J
.end method

.method public abstract Q2()Z
.end method

.method public abstract R3()Ljava/lang/String;
.end method

.method public abstract Z1()Ljava/lang/String;
.end method

.method public abstract getCoverImageUrl()Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract o2()Landroid/net/Uri;
.end method

.method public abstract u()Lcom/google/android/gms/games/Game;
.end method

.method public abstract y2()Lcom/google/android/gms/games/Player;
.end method
