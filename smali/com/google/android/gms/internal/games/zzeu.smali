###### Class com.google.android.gms.internal.games.zzeu (com.google.android.gms.internal.games.zzeu)
.class abstract Lcom/google/android/gms/internal/games/zzeu;
.super Lcom/google/android/gms/games/Games$zzb;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$zzb<",
        "Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public synthetic f(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games/zzex;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/games/zzex;-><init>(Lcom/google/android/gms/internal/games/zzeu;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
