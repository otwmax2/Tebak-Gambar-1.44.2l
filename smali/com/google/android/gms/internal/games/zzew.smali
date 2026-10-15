###### Class com.google.android.gms.internal.games.zzew (com.google.android.gms.internal.games.zzew)
.class abstract Lcom/google/android/gms/internal/games/zzew;
.super Lcom/google/android/gms/games/Games$zzb;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$zzb<",
        "Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public synthetic f(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games/zzez;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/games/zzez;-><init>(Lcom/google/android/gms/internal/games/zzew;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
