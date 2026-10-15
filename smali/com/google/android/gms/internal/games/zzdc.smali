###### Class com.google.android.gms.internal.games.zzdc (com.google.android.gms.internal.games.zzdc)
.class final Lcom/google/android/gms/internal/games/zzdc;
.super Lcom/google/android/gms/internal/games/zzde;
.source "com.google.android.gms:play-services-games@@21.0.0"


# instance fields
.field private final synthetic t:I


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
    iget v3, p0, Lcom/google/android/gms/internal/games/zzdc;->t:I

    const-string v2, "played_with"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzf;->I0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;IZZ)V

    return-void
.end method
