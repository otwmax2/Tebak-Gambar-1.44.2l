###### Class com.google.android.gms.internal.games.zzan (com.google.android.gms.internal.games.zzan)
.class final Lcom/google/android/gms/internal/games/zzan;
.super Lcom/google/android/gms/internal/games/zzao;
.source "com.google.android.gms:play-services-games@@21.0.0"


# instance fields
.field private final synthetic t:Ljava/lang/String;

.field private final synthetic u:I


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
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzan;->t:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/games/zzan;->u:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/games/internal/zzf;->M1(Ljava/lang/String;I)V

    return-void
.end method
