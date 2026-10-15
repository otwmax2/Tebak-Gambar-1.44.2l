###### Class com.google.android.gms.internal.games.zzal (com.google.android.gms.internal.games.zzal)
.class final Lcom/google/android/gms/internal/games/zzal;
.super Lcom/google/android/gms/internal/games/zzam;
.source "com.google.android.gms:play-services-games@@21.0.0"


# instance fields
.field private final synthetic t:Z

.field private final synthetic u:[Ljava/lang/String;


# virtual methods
.method public final synthetic s(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/games/zzal;->t:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/games/zzal;->u:[Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/zzf;->P0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Z[Ljava/lang/String;)V

    return-void
.end method
