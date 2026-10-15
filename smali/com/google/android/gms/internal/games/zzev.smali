###### Class com.google.android.gms.internal.games.zzev (com.google.android.gms.internal.games.zzev)
.class final Lcom/google/android/gms/internal/games/zzev;
.super Lcom/google/android/gms/internal/games/zzeu;
.source "com.google.android.gms:play-services-games@@21.0.0"


# instance fields
.field private final synthetic t:I


# virtual methods
.method protected final synthetic s(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/games/zzev;->t:I

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/zzf;->A0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;I)V

    return-void
.end method
