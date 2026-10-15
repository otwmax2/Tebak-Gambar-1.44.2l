###### Class com.google.android.gms.games.internal.g (com.google.android.gms.games.internal.g)
.class final Lcom/google/android/gms/games/internal/g;
.super Lcom/google/android/gms/games/internal/zzf$r;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/internal/zzf$r<",
        "Lcom/google/android/gms/games/video/Videos$CaptureStateResult;",
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
.method public final n2(ILandroid/os/Bundle;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/zzf$f0;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/games/video/CaptureState;->a(Landroid/os/Bundle;)Lcom/google/android/gms/games/video/CaptureState;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/internal/zzf$f0;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/games/video/CaptureState;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/zzf$r;->X0(Ljava/lang/Object;)V

    return-void
.end method
