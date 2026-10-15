###### Class com.google.android.gms.internal.games.zzbd (com.google.android.gms.internal.games.zzbd)
.class final Lcom/google/android/gms/internal/games/zzbd;
.super Lcom/google/android/gms/internal/games/zzbc;
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
    invoke-virtual {p1, p0}, Lcom/google/android/gms/games/internal/zzf;->z0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    return-void
.end method
