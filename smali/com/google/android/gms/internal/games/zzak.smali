###### Class com.google.android.gms.internal.games.zzak (com.google.android.gms.internal.games.zzak)
.class final Lcom/google/android/gms/internal/games/zzak;
.super Lcom/google/android/gms/internal/games/zzam;
.source "com.google.android.gms:play-services-games@@21.0.0"


# instance fields
.field private final synthetic t:Z


# virtual methods
.method public final synthetic s(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/games/zzak;->t:Z

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/zzf;->X1(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Z)V

    return-void
.end method
