###### Class com.google.android.gms.internal.games.zzcq (com.google.android.gms.internal.games.zzcq)
.class final synthetic Lcom/google/android/gms/internal/games/zzcq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzcq;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/games/zzcq;->b:Z

    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/games/internal/zzf;->f1(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;Z)V

    return-void
.end method
