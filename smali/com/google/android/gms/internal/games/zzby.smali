###### Class com.google.android.gms.internal.games.zzby (com.google.android.gms.internal.games.zzby)
.class final Lcom/google/android/gms/internal/games/zzby;
.super Lcom/google/android/gms/internal/games/zzcg;
.source "com.google.android.gms:play-services-games@@21.0.0"


# instance fields
.field private final synthetic t:Ljava/lang/String;

.field private final synthetic u:I

.field private final synthetic v:I

.field private final synthetic w:I

.field private final synthetic x:Z


# virtual methods
.method protected final synthetic s(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/zzf;

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzby;->t:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/games/zzby;->u:I

    iget v4, p0, Lcom/google/android/gms/internal/games/zzby;->v:I

    iget v5, p0, Lcom/google/android/gms/internal/games/zzby;->w:I

    iget-boolean v6, p0, Lcom/google/android/gms/internal/games/zzby;->x:Z

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/zzf;->H0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;IIIZ)V

    return-void
.end method
