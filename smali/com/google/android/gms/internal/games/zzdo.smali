###### Class com.google.android.gms.internal.games.zzdo (com.google.android.gms.internal.games.zzdo)
.class final synthetic Lcom/google/android/gms/internal/games/zzdo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final a:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzdo;->a:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->R3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/games/internal/zzf;->U1(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V

    return-void
.end method
