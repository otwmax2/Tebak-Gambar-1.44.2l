###### Class com.google.android.gms.games.internal.i (com.google.android.gms.games.internal.i)
.class final Lcom/google/android/gms/games/internal/i;
.super Lcom/google/android/gms/games/internal/zzf$u0;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/internal/zzf$u0<",
        "Lcom/google/android/gms/games/VideosClient$OnCaptureOverlayStateListener;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$u0;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    return-void
.end method


# virtual methods
.method public final J0(I)V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/h;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/h;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/zzf$u0;->X0(Lcom/google/android/gms/games/internal/zzf$s;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.h (com.google.android.gms.games.internal.h)
.class final synthetic Lcom/google/android/gms/games/internal/h;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/internal/zzf$s;


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/internal/h;->a:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/games/internal/h;->a:I

    check-cast p1, Lcom/google/android/gms/games/VideosClient$OnCaptureOverlayStateListener;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/games/VideosClient$OnCaptureOverlayStateListener;->J0(I)V

    return-void
.end method
