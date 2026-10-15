###### Class com.google.android.gms.internal.games.zzdb (com.google.android.gms.internal.games.zzdb)
.class final Lcom/google/android/gms/internal/games/zzdb;
.super Lcom/google/android/gms/internal/games/zzde;
.source "com.google.android.gms:play-services-games@@21.0.0"


# instance fields
.field private final synthetic t:I

.field private final synthetic u:Z


# virtual methods
.method protected final synthetic s(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/games/zzdb;->t:I

    iget-boolean v1, p0, Lcom/google/android/gms/internal/games/zzdb;->u:Z

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v2, v1}, Lcom/google/android/gms/games/internal/zzf;->B0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;IZZ)V

    return-void
.end method
