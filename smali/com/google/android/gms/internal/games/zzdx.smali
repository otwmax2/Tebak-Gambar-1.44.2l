###### Class com.google.android.gms.internal.games.zzdx (com.google.android.gms.internal.games.zzdx)
.class final Lcom/google/android/gms/internal/games/zzdx;
.super Lcom/google/android/gms/internal/games/zzec;
.source "com.google.android.gms:play-services-games@@21.0.0"


# instance fields
.field private final synthetic t:Ljava/lang/String;

.field private final synthetic u:Ljava/lang/String;

.field private final synthetic v:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

.field private final synthetic w:Lcom/google/android/gms/games/snapshot/SnapshotContents;


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
    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzdx;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/games/zzdx;->u:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/games/zzdx;->v:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    iget-object v5, p0, Lcom/google/android/gms/internal/games/zzdx;->w:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzf;->L0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V

    return-void
.end method
