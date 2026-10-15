###### Class com.google.android.gms.internal.games.zzbz (com.google.android.gms.internal.games.zzbz)
.class final Lcom/google/android/gms/internal/games/zzbz;
.super Lcom/google/android/gms/internal/games/zzce;
.source "com.google.android.gms:play-services-games@@21.0.0"


# instance fields
.field private final synthetic t:Ljava/lang/String;

.field private final synthetic u:I

.field private final synthetic v:I


# virtual methods
.method protected final synthetic s(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/zzf;

    .line 2
    iget-object v3, p0, Lcom/google/android/gms/internal/games/zzbz;->t:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/games/zzbz;->u:I

    iget v5, p0, Lcom/google/android/gms/internal/games/zzbz;->v:I

    const/4 v2, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzf;->K0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
