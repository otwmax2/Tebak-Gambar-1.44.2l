###### Class com.google.android.gms.internal.games.zzdm (com.google.android.gms.internal.games.zzdm)
.class final synthetic Lcom/google/android/gms/internal/games/zzdm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final a:Lcom/google/android/gms/games/snapshot/Snapshot;

.field private final b:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzdm;->a:Lcom/google/android/gms/games/snapshot/Snapshot;

    iget-object v1, p0, Lcom/google/android/gms/internal/games/zzdm;->b:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/games/internal/zzf;->W0(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V

    return-void
.end method
