###### Class com.google.android.gms.games.internal.l (com.google.android.gms.games.internal.l)
.class final Lcom/google/android/gms/games/internal/l;
.super Lcom/google/android/gms/games/internal/zzf$r;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/internal/zzf$r<",
        "Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$r;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    return-void
.end method


# virtual methods
.method public final n7(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/zzf$y;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzf$y;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/zzf$r;->X0(Ljava/lang/Object;)V

    return-void
.end method
