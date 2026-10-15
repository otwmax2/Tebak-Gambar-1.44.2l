###### Class com.google.android.gms.internal.games.zzt (com.google.android.gms.internal.games.zzt)
.class final Lcom/google/android/gms/internal/games/zzt;
.super Lcom/google/android/gms/internal/games/zzaa;
.source "com.google.android.gms:play-services-games@@21.0.0"


# instance fields
.field private final synthetic t:Ljava/lang/String;


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
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzt;->t:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/games/internal/zzf;->F0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;)V

    return-void
.end method
