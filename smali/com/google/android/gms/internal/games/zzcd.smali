###### Class com.google.android.gms.internal.games.zzcd (com.google.android.gms.internal.games.zzcd)
.class final Lcom/google/android/gms/internal/games/zzcd;
.super Lcom/google/android/gms/internal/games/zzci;
.source "com.google.android.gms:play-services-games@@21.0.0"


# instance fields
.field private final synthetic t:Ljava/lang/String;

.field private final synthetic u:J

.field private final synthetic v:Ljava/lang/String;


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
    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzcd;->t:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/games/zzcd;->u:J

    iget-object v5, p0, Lcom/google/android/gms/internal/games/zzcd;->v:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzf;->J0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
