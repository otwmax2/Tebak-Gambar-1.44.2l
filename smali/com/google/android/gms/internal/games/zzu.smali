###### Class com.google.android.gms.internal.games.zzu (com.google.android.gms.internal.games.zzu)
.class final Lcom/google/android/gms/internal/games/zzu;
.super Lcom/google/android/gms/internal/games/zzaa;
.source "com.google.android.gms:play-services-games@@21.0.0"


# instance fields
.field private final synthetic t:Ljava/lang/String;


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
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzu;->t:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/zzf;->z1(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;)V

    return-void
.end method
