###### Class com.google.android.gms.internal.games.zzds (com.google.android.gms.internal.games.zzds)
.class final Lcom/google/android/gms/internal/games/zzds;
.super Lcom/google/android/gms/internal/games/zzec;
.source "com.google.android.gms:play-services-games@@21.0.0"


# instance fields
.field private final synthetic t:Ljava/lang/String;

.field private final synthetic u:Z

.field private final synthetic v:I


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
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzds;->t:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/games/zzds;->u:Z

    iget v2, p0, Lcom/google/android/gms/internal/games/zzds;->v:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/zzf;->N0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;ZI)V

    return-void
.end method
