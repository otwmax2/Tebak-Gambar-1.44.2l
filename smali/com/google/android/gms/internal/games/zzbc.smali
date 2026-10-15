###### Class com.google.android.gms.internal.games.zzbc (com.google.android.gms.internal.games.zzbc)
.class abstract Lcom/google/android/gms/internal/games/zzbc;
.super Lcom/google/android/gms/games/Games$zzb;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$zzb<",
        "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public synthetic f(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games/zzbf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/games/zzbf;-><init>(Lcom/google/android/gms/internal/games/zzbc;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
