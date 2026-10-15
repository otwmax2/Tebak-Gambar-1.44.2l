###### Class com.google.android.gms.internal.games.zzcr (com.google.android.gms.internal.games.zzcr)
.class final synthetic Lcom/google/android/gms/internal/games/zzcr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final a:Z


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/games/zzcr;->a:Z

    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/games/internal/zzf;->h1(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V

    return-void
.end method
