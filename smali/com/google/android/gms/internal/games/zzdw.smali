###### Class com.google.android.gms.internal.games.zzdw (com.google.android.gms.internal.games.zzdw)
.class abstract Lcom/google/android/gms/internal/games/zzdw;
.super Lcom/google/android/gms/games/Games$zzb;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$zzb<",
        "Lcom/google/android/gms/games/snapshot/Snapshots$CommitSnapshotResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public synthetic f(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games/zzdz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/games/zzdz;-><init>(Lcom/google/android/gms/internal/games/zzdw;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
