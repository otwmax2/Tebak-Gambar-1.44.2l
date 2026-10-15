###### Class com.google.android.gms.internal.games.zzbq (com.google.android.gms.internal.games.zzbq)
.class final synthetic Lcom/google/android/gms/internal/games/zzbq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Z


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzbq;->a:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/games/zzbq;->b:I

    iget v4, p0, Lcom/google/android/gms/internal/games/zzbq;->c:I

    iget v5, p0, Lcom/google/android/gms/internal/games/zzbq;->d:I

    iget-boolean v6, p0, Lcom/google/android/gms/internal/games/zzbq;->e:Z

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/zzf;

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/zzf;->I1(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;IIIZ)V

    return-void
.end method
