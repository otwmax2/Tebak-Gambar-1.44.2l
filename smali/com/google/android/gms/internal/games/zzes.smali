###### Class com.google.android.gms.internal.games.zzes (com.google.android.gms.internal.games.zzes)
.class final Lcom/google/android/gms/internal/games/zzes;
.super Lcom/google/android/gms/internal/games/zzey;
.source "com.google.android.gms:play-services-games@@21.0.0"


# virtual methods
.method protected final synthetic s(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/games/internal/zzf;->W1(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    return-void
.end method
