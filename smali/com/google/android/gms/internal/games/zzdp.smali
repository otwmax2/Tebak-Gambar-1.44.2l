###### Class com.google.android.gms.internal.games.zzdp (com.google.android.gms.internal.games.zzdp)
.class final synthetic Lcom/google/android/gms/internal/games/zzdp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final a:Lcom/google/android/gms/games/snapshot/Snapshot;


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzdp;->a:Lcom/google/android/gms/games/snapshot/Snapshot;

    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/games/internal/zzf;->S0(Lcom/google/android/gms/games/snapshot/Snapshot;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void
.end method
