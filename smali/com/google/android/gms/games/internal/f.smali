###### Class com.google.android.gms.games.internal.f (com.google.android.gms.games.internal.f)
.class final Lcom/google/android/gms/games/internal/f;
.super Lcom/google/android/gms/games/internal/zzf$r;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/internal/zzf$r<",
        "Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;",
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
.method public final A0(IZ)V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/zzf$d0;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzf$d0;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/zzf$r;->X0(Ljava/lang/Object;)V

    return-void
.end method
