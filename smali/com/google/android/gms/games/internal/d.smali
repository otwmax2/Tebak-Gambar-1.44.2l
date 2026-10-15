###### Class com.google.android.gms.games.internal.d (com.google.android.gms.games.internal.d)
.class final Lcom/google/android/gms/games/internal/d;
.super Lcom/google/android/gms/games/internal/zzf$r;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/internal/zzf$r<",
        "Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;",
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
.method public final R2(ILcom/google/android/gms/games/video/VideoCapabilities;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/zzf$c0;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzf$c0;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/games/video/VideoCapabilities;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/zzf$r;->X0(Ljava/lang/Object;)V

    return-void
.end method
