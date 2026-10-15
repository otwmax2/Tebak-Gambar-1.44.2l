###### Class com.google.android.gms.internal.games.zzdr (com.google.android.gms.internal.games.zzdr)
.class final synthetic Lcom/google/android/gms/internal/games/zzdr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

.field private final d:Lcom/google/android/gms/games/snapshot/SnapshotContents;


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzdr;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/games/zzdr;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/games/zzdr;->c:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    iget-object v5, p0, Lcom/google/android/gms/internal/games/zzdr;->d:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/zzf;

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzf;->e1(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V

    return-void
.end method
